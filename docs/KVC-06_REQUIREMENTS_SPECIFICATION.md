# KVC-6 — Software Requirements Specification (SRS)

## 1. Introduction

### 1.1 Purpose

This document defines the functional and non-functional requirements for **Qazaq Voice**, an intelligent voice control system designed to recognize spoken Kazakh commands and execute a restricted set of actions on Windows 11.

The purpose of this specification is to establish clear, measurable, and testable requirements that will guide system architecture, implementation, and evaluation.

The document describes the **planned system**, not an already implemented application.

### 1.2 Project Scope

Qazaq Voice is intended to provide hands-free interaction with selected Windows functions through spoken Kazakh commands.

The proposed processing pipeline is:

**Voice Input → Neural ASR → Text Normalization → Intent Recognition → Command Validation → Windows Action → User Feedback**

The application will initially support seven predefined commands, a graphical desktop interface, and safe handling of unsupported or incorrectly recognized speech.

The project focuses on Kazakh-language interaction, Windows integration, reliability, security, and usability.

### 1.3 Requirements Sources

The requirements are derived from:

1. The project objectives and scope defined in `KVC-01_PROJECT_PROPOSAL.md`.
2. Preliminary user feedback documented in `KVC-02_RELEVANCE_EVIDENCE.md`.
3. The analysis of existing voice assistants in `KVC-04_EXISTING_SYSTEM_COMPARISON.md`.
4. Technical alternatives and preliminary engineering decisions in `KVC-05_TECHNOLOGY_COMPARISON.md`.
5. Engineering and security considerations relevant to Windows desktop applications.

The user needs assessment indicated interest in basic Windows operations, particularly opening applications and changing audio volume.

It also suggested that visual controls and recovery mechanisms are important when speech recognition fails.

These observations informed the initial requirements. However, the small questionnaire sample does not establish statistically representative user demand.

### 1.4 Target Platform

- Operating system: Windows 11, 64-bit.
- Application type: Desktop application.
- Primary input: Kazakh speech through a microphone.
- Secondary input: Mouse and keyboard.
- Planned implementation language: Python.
- Proposed desktop UI framework: PySide6.
- Neural ASR: Final model selection pending comparative evaluation.

The technical stack is provisional and may be revised after supervisor review and implementation testing.

## 2. Requirement Prioritization

The requirements use the MoSCoW prioritization method.

| Priority | Meaning | Description |
|---|---|---|
| M — Must Have | Mandatory | Essential for the first functional MVP |
| S — Should Have | Important | Valuable for usability or reliability but not essential to demonstrate the core processing pipeline |
| C — Could Have | Optional | May be implemented if time and resources permit |
| W — Won't Have | Excluded | Outside the current MVP scope |

Every requirement has a unique identifier and an acceptance criterion.

Acceptance criteria describe the conditions under which a future implementation can be considered compliant.

**No requirement is marked as experimentally verified at this checkpoint.**

## 3. Functional Requirements

Functional requirements define the operations the application must perform.

| ID | Priority | Requirement | Acceptance Criteria |
|---|---|---|---|
| FR-01 | M | Microphone activation and deactivation | The user can start and stop recording. The UI visibly distinguishes inactive and listening states. Denied microphone access produces an understandable error without crashing the application. |
| FR-02 | M | Kazakh speech recognition | The system accepts a supported audio input and returns a Kazakh transcription using a neural ASR model, or reports a recoverable recognition failure. |
| FR-03 | M | Display recognized speech | Recognized Kazakh text is displayed correctly, including Kazakh-specific characters such as Ә, Ғ, Қ, Ң, Ө, Ұ, Ү, Һ, and І. |
| FR-04 | M | Intent recognition | Valid supported command phrases are mapped to the correct predefined intent. Unsupported phrases return `UNKNOWN` and do not trigger actions. |
| FR-05 | M | Windows command execution | Each of the seven approved intents triggers its predefined Windows action. Unapproved actions cannot be executed through the voice-command pipeline. |
| FR-06 | M | User feedback | The UI distinguishes listening, processing, success, and error states. Action results are reported after execution is attempted. |
| FR-07 | M | Error handling | Unsupported commands, recognition errors, unavailable applications, and microphone failures are handled without unintended Windows actions or application crashes. |
| FR-08 | M | Desktop interface and fallback controls | Users can operate essential interface controls using a mouse or keyboard and can submit a supported command as text without using the microphone. |
| FR-09 | S | Session command history | During an active session, the interface displays previous recognized commands and results. The user can clear this history. Raw audio is not stored as part of the history. |
| FR-10 | C | Offline speech recognition | If a compatible local model is selected, the application can recognize supported commands without an internet connection. |

### 3.1 FR-01 — Microphone Control

The user must be able to explicitly activate and deactivate microphone recording.

Recording must not start automatically when the application launches.

The interface must indicate when audio capture is active.

If the microphone is unavailable or Windows denies access, the application must display an error and remain usable.

### 3.2 FR-02 — Kazakh Speech Recognition

The system must convert recorded Kazakh speech into text using a neural ASR model.

Possible candidates include Whisper [R5] and appropriately adapted XLS-R models [R6].

The final model will be selected based on recognition quality, performance, and deployment feasibility.

ASR failures must be reported without inventing a transcription.

### 3.3 FR-04 — Intent Recognition

The system must normalize recognized text before determining the intended operation.

The initial implementation will use predefined command phrases and permitted variations.

Examples:

- "Калькуляторды аш" → `open_calculator`
- "Дыбысты көтер" → `volume_up`
- "Уақытты көрсет" → `show_time`

If the text does not match a supported command, the system must return `UNKNOWN`.

Unknown phrases must never be interpreted as arbitrary operating-system instructions.

### 3.4 FR-05 — Approved Windows Commands

The first MVP will support exactly seven planned intent categories.

| Intent ID | Example Kazakh Command | Expected Action | Safety Constraint |
|---|---|---|---|
| `open_browser` | Браузерді аш | Open the default web browser | Use a predefined browser launch mechanism |
| `open_calculator` | Калькуляторды аш | Open Windows Calculator | Use an approved application target |
| `open_notepad` | Блокнотты аш | Open Windows Notepad | Use an approved application target |
| `volume_up` | Дыбысты көтер | Increase system output volume | Apply a predefined bounded increment |
| `volume_down` | Дыбысты азайт | Decrease system output volume | Apply a predefined bounded decrement |
| `show_time` | Уақытты көрсет | Display the current local system time | Read-only operation |
| `web_search` | Google-дан ауа райын ізде | Open a web search using the recognized query | Validate and URL-encode the query; never execute it as a shell command |

The listed phrases are initial examples and must be expanded or revised using realistic Kazakh command data.

All execution requests must pass through a command validation component.

Microsoft documents Windows process-creation mechanisms such as CreateProcessW [R22]. Any application-launch mechanism selected for the project must use predefined executable targets and must not construct executable commands from unrestricted speech input.

## 4. Non-Functional Requirements

Non-functional requirements define the expected quality, performance, security, compatibility, and maintainability of the system.

| ID | Priority | Requirement | Planned Acceptance Criteria |
|---|---|---|---|
| NFR-01 | M | Speech recognition quality | Evaluate WER and CER on a documented held-out Kazakh dataset. A numerical acceptance threshold will be selected after baseline testing and supervisor review. |
| NFR-02 | M | Intent recognition accuracy | Proposed target: at least 85% correct intent predictions on an agreed labeled test set, including unknown commands. |
| NFR-03 | M | Windows action reliability | Proposed target: at least 95% successful execution when the correct approved intent is provided in a valid Windows environment. |
| NFR-04 | S | Response latency | Proposed target: median end-to-end latency of no more than 4 seconds after the user finishes speaking, measured on documented test hardware. The 95th-percentile latency must also be reported. |
| NFR-05 | M | Stability and fault tolerance | Microphone denial, invalid audio, ASR failure, missing applications, and unsupported commands must not cause an unhandled crash. |
| NFR-06 | M | Security | The application must reject unknown commands and prohibit arbitrary shell execution, file deletion, shutdown, privilege escalation, and other actions outside the approved allowlist. |
| NFR-07 | M | Privacy | Microphone activation is user-controlled; recording state is visible; raw audio is not persistently stored by default. Any use of external processing must be disclosed. |
| NFR-08 | S | Usability and accessibility | Essential controls must be keyboard-accessible, visibly labeled, and usable without voice input. Text scaling and contrast must be reviewed, with representative user validation planned. |
| NFR-09 | M | Windows compatibility | Test on Windows 11 64-bit and document the operating-system build, microphone configuration, and hardware specifications. |
| NFR-10 | M | Maintainability and modularity | UI, ASR, intent recognition, validation, and Windows execution must be separate components. Intent recognition must be testable without microphone access. |

**Important:** All numerical targets in this section are proposed engineering objectives. They are not achieved results and require pilot measurements and supervisor approval.

## 5. Performance and Evaluation Requirements

### 5.1 Speech Recognition Accuracy

The system will be evaluated using:

**Word Error Rate (WER):**

WER = (Substitutions + Deletions + Insertions) / Reference Word Count

**Character Error Rate (CER):**

CER = (Character Substitutions + Deletions + Insertions) / Reference Character Count

Lower WER and CER indicate fewer transcription errors.

Evaluation must use a consistently documented text-normalization procedure and held-out data.

The exact target values remain open until preliminary ASR benchmarking is completed.

### 5.2 Intent Recognition Accuracy

Intent recognition accuracy measures the proportion of test inputs mapped to the correct intent.

**Intent Accuracy = Correct Intent Predictions / Total Evaluated Inputs**

The preliminary target is **85% or higher**.

The test set should include multiple phrases for supported commands and examples of unsupported speech.

Because the number of commands per class may differ, macro-F1 should also be reported.

### 5.3 Command Execution Reliability

Execution success measures whether a correctly recognized and validated command produces the intended Windows action.

**Execution Success Rate = Successful Approved Actions / Validated Action Attempts**

The preliminary target is **95% or higher** under documented test conditions.

This metric is conditional on the correct intent reaching the executor.

The system must also report a separate **end-to-end task success rate**, which includes errors introduced by speech recognition and intent classification.

### 5.4 Response Latency

Latency is measured from the end of the user's spoken command to the observed result of the Windows action or the displayed failure response.

The preliminary target is:

- Median latency (p50): no more than 4 seconds.
- 95th-percentile latency (p95): measured and reported.
- Maximum latency: recorded for diagnostic purposes.

All measurements must identify the hardware, software version, ASR model, and number of test cases.

## 6. Security Requirements

Security is especially important because the application interacts directly with the operating system.

### 6.1 Allowed Actions Only

The application must execute only commands registered in a predefined allowlist.

The recognized speech transcript must never be executed directly as a shell command.

### 6.2 Unsupported Commands

If a user says an unsupported phrase, the system must:

1. Classify the phrase as `UNKNOWN`.
2. Avoid executing any Windows action.
3. Display an understandable message.
4. Allow the user to try again.

### 6.3 Dangerous Operations

The first MVP will explicitly exclude:

- Arbitrary terminal or PowerShell commands.
- File deletion or modification through unrestricted speech.
- System shutdown or restart commands.
- Privilege escalation.
- Financial transactions.
- Unrestricted application scripting.
- Background execution of unapproved commands.

### 6.4 Input Validation

Commands containing parameters, such as web searches, must validate those parameters before execution.

Search queries must be correctly encoded when constructing URLs.

Unknown or malformed parameters must be rejected or handled safely.

## 7. Usability and Accessibility Requirements

The preliminary survey conducted for KVC-2 highlighted the importance of visible controls and alternatives to speech interaction.

Therefore, the application should include:

- A clearly visible microphone activation button.
- An indication of whether the system is listening.
- A display of recognized Kazakh text.
- Visible success and error messages.
- Mouse and keyboard interaction.
- Text-based command submission for fallback and testing.
- An interface that remains usable when speech recognition fails.

Potential accessibility benefits for older adults and people with disabilities remain research hypotheses.

The system cannot be described as accessibility-validated until appropriate usability testing has been performed.

## 8. Required User Scenarios

### Scenario 1 — Open Calculator

**Precondition:** The application is running and microphone access is permitted.

1. The user activates the microphone.
2. The user says "Калькуляторды аш".
3. The ASR component returns the recognized phrase.
4. The intent recognition component identifies `open_calculator`.
5. The command validator approves the intent.
6. The Windows executor attempts to open Calculator.
7. The UI reports the observed result.

**Expected outcome:** Calculator opens successfully, or a recoverable error is displayed.

### Scenario 2 — Increase System Volume

1. The user says "Дыбысты көтер".
2. The system recognizes `volume_up`.
3. The action is validated.
4. The system increases the output volume by a predefined amount.
5. The UI confirms the result.

**Expected outcome:** Volume increases without exceeding the allowed range.

### Scenario 3 — Display Current Time

1. The user says "Уақытты көрсет".
2. The system identifies `show_time`.
3. The application reads the current Windows system time.
4. The time is displayed.

**Expected outcome:** The interface shows the local time without modifying system settings.

### Scenario 4 — Unsupported Command

1. The user speaks a phrase that is not part of the approved command list.
2. The system classifies the input as `UNKNOWN`.
3. No Windows action is executed.
4. The interface displays an unsupported-command message.

**Expected outcome:** Safe rejection and continued application usability.

### Scenario 5 — Microphone Access Denied

1. The user attempts to activate the microphone.
2. Windows denies access.
3. The application detects the error.
4. The UI displays a meaningful explanation.
5. The user can continue using available non-voice controls.

**Expected outcome:** The application does not crash.

### Scenario 6 — Text-Based Command Fallback

1. The user opens the desktop interface.
2. The user enters "Блокнотты аш" through a text input.
3. The system processes the phrase through the same intent validation pipeline.
4. The approved Notepad action is attempted.
5. The interface reports the result.

**Expected outcome:** The command can be executed without microphone input while preserving the same security restrictions.

## 9. Requirements Traceability Matrix

The following table maps requirements to the proposed verification plan.

| Requirement | Related Test Cases | Verification Objective |
|---|---|---|
| FR-01 | TC-01, TC-08 | Microphone control and permission handling |
| FR-02 | TC-02, TC-09 | Kazakh speech transcription |
| FR-03 | TC-02, TC-09 | Correct display of Kazakh characters |
| FR-04 | TC-03, TC-10 | Intent recognition and unknown-command handling |
| FR-05 | TC-04, TC-05, TC-06, TC-07 | Execution of supported Windows commands |
| FR-06 | TC-01, TC-08, TC-11 | Visible status and error feedback |
| FR-07 | TC-08, TC-10, TC-11 | Failure handling and safe recovery |
| FR-08 | Additional keyboard/fallback test required | Non-voice command submission |
| FR-09 | Additional session-history test required | History display and clearing |
| FR-10 | Additional offline test if implemented | Operation without network access |
| NFR-01 | TC-02, TC-09 | WER and CER |
| NFR-02 | TC-03, TC-10 | Intent accuracy |
| NFR-03 | TC-04–TC-07 | Execution reliability |
| NFR-04 | Performance measurements during TC-02–TC-07 | End-to-end latency |
| NFR-05 | TC-08, TC-11 | Stability and fault tolerance |
| NFR-06 | TC-10, TC-12 | Protection against unauthorized execution |
| NFR-07 | Additional privacy test required | Audio retention and microphone activation |
| NFR-08 | Additional usability test required | Keyboard access, visual fallback, readability |
| NFR-09 | Windows 11 test environment | Compatibility |
| NFR-10 | Component-level tests and architecture review | Modular design |

The initial verification plan in KVC-9 contains TC-01 through TC-12.

Additional test cases for keyboard fallback, session history, privacy, and usability should be formally added when KVC-9 is reviewed.

No actual test outcomes are claimed in this requirements specification.

## 10. Requirements Validation and Approval

The requirements have been prepared using the available project scope, preliminary user feedback, comparative research, and proposed engineering architecture.

However, the following decisions require additional validation:

1. Final ASR model and checkpoint.
2. Target deployment hardware.
3. Numerical ASR accuracy thresholds.
4. Final accepted command phrases and linguistic variants.
5. Performance and execution reliability targets.
6. Privacy and audio retention policy.
7. Supervisor approval of the requirement priorities and scope.

Requirements may be updated as implementation and evaluation provide new evidence.

## 11. Conclusion

The requirements specification defines ten functional requirements and ten non-functional requirements for the proposed Qazaq Voice system.

The initial MVP focuses on Kazakh speech recognition, safe execution of seven Windows commands, visible feedback, error handling, and alternative interaction controls.

Security is enforced through an explicit command allowlist and separation between recognized speech and operating-system execution.

Performance and quality requirements are expressed as measurable future evaluation criteria.

This specification establishes a foundation for the system architecture in KVC-7 and the verification plan in KVC-9.

The application has not yet been implemented or evaluated against these requirements.

## References

**[R1]** Microsoft Support. *Set up voice access*. Microsoft. Accessed October 23, 2026.

https://support.microsoft.com/en-us/accessibility/windows/voice-access/set-up-voice-access

**[R5]** Radford, A., et al. (2023). *Robust Speech Recognition via Large-Scale Weak Supervision*. Proceedings of the 40th International Conference on Machine Learning.

https://proceedings.mlr.press/v202/radford23a.html

**[R6]** Babu, A., et al. (2022). *XLS-R: Self-supervised Cross-lingual Speech Representation Learning at Scale*. Proceedings of Interspeech 2022.

https://www.isca-archive.org/interspeech_2022/babu22_interspeech.html

**[R22]** Microsoft Learn. *CreateProcessW Function (processthreadsapi.h)*. Windows API Documentation. Accessed October 23, 2026.

https://learn.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-createprocessw

## Related Project Documents

- [KVC-1 — Project Proposal](KVC-01_PROJECT_PROPOSAL.md)
- [KVC-2 — Evidence of Relevance](KVC-02_RELEVANCE_EVIDENCE.md)
- [KVC-4 — Existing Systems Comparison](KVC-04_EXISTING_SYSTEM_COMPARISON.md)
- [KVC-5 — Technology Comparison](KVC-05_TECHNOLOGY_COMPARISON.md)
- [KVC-7 — System Architecture](KVC-07_ARCHITECTURE.md)
- [KVC-9 — Verification Plan](KVC-09_VERIFICATION_PLAN.md)