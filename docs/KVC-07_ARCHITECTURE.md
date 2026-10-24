# KVC-7 — System Architecture and UML Diagrams

## 1. Introduction

This document describes the proposed software architecture of **Qazaq Voice**, an intelligent Kazakh-language voice control system for Windows 11.

The architecture is based on the functional and non-functional requirements defined in `KVC-06_REQUIREMENTS_SPECIFICATION.md` and the preliminary technical decisions documented in `KVC-05_TECHNOLOGY_COMPARISON.md`.

The main objective is to establish a modular, secure, and testable architecture that connects Kazakh speech recognition with a restricted set of Windows operating-system actions.

The architecture is represented through three diagrams:

1. System Context Diagram.
2. Use Case Diagram.
3. Component Diagram.

These diagrams describe the **planned implementation**, not an already completed system.

## 2. Architectural Objectives

The architecture must support the following objectives:

- Recognize spoken Kazakh commands using a neural ASR model.
- Interpret recognized text and identify predefined user intents.
- Execute only approved Windows operating-system actions.
- Provide understandable feedback about recognized commands and execution results.
- Support alternative interaction using keyboard and mouse.
- Handle unsupported commands and technical errors safely.
- Allow the ASR component to be replaced without redesigning the entire application.
- Support separate testing of speech recognition, intent recognition, command execution, and end-to-end performance.

The system must separate language interpretation from operating-system execution.

In particular, raw speech recognition output must never be passed directly to a command shell.

## 3. System Context Diagram

### 3.1 Purpose

The System Context Diagram defines the boundaries of Qazaq Voice and its interactions with external users, devices, and software environments.

The proposed solution is a desktop application designed for Windows 11 rather than a browser-only application.

### 3.2 External Entities

| External entity | Description | Interaction with Qazaq Voice |
|---|---|---|
| Windows User | A person who wants to control selected Windows functions using Kazakh voice commands | Provides speech or typed commands and receives feedback |
| Microphone | Audio input device connected to the computer | Supplies audio during user-initiated recording |
| Windows 11 Operating System | The target operating system | Receives validated action requests and returns results or errors |
| Windows Applications | Approved applications such as Calculator, Notepad, and a default browser | Are launched or accessed through predefined actions |
| Web Search Service | External service reached through the browser | Processes searches initiated by an approved web-search command |

The first implementation may use local ASR inference. A remote inference service is not part of the baseline architecture and would require an explicit technical decision and privacy review.

### 3.3 System Boundary

Qazaq Voice is responsible for:

- Managing the desktop interface.
- Capturing user-initiated microphone input.
- Producing or receiving speech transcriptions.
- Identifying supported command intents.
- Validating requested actions.
- Invoking predefined Windows operations.
- Displaying results and errors.

The Windows operating system and installed applications remain external to the Qazaq Voice application.

Qazaq Voice does not provide unrestricted control over Windows.

### 3.4 Main Context Interactions

**Interaction A — User to Application**

The user activates microphone recording or enters a command through a text field.

**Interaction B — Microphone to Application**

The audio input device supplies recorded speech to the application after the user explicitly starts recording.

**Interaction C — Application to Windows**

The application sends a validated request to execute an approved action.

**Interaction D — Windows to Application**

The operating system returns an execution result or an error.

**Interaction E — Application to User**

The application displays recognized text, status information, command results, or error messages.

### 3.5 Diagram Artifact

The System Context Diagram must visually distinguish the Qazaq Voice application from the Windows operating system and other external entities.

**Expected diagram:** `diagrams/01-system-context.png`

**Editable source:** `diagrams/01-system-context.mmd` (Mermaid source).

## 4. Use Case Diagram

### 4.1 Purpose

The Use Case Diagram describes the functions available to users and their interactions with the proposed application.

It focuses on user-visible behavior rather than internal implementation details.

### 4.2 Actors

**Primary Actor — Windows User**

The Windows User interacts with the application through spoken Kazakh commands or manual input.

**Supporting Actor — Windows 11 Operating System**

Windows 11 provides the operating-system services required to execute approved actions.

### 4.3 Main Use Cases

| ID | Use Case | Description | Related Requirement |
|---|---|---|---|
| UC-01 | Start Voice Recording | Activate microphone input explicitly | FR-01 |
| UC-02 | Stop Voice Recording | Stop microphone recording | FR-01 |
| UC-03 | Recognize Kazakh Speech | Convert recorded audio into text | FR-02, FR-03 |
| UC-04 | Submit Text Command | Enter a command using the keyboard | FR-08 |
| UC-05 | Open Approved Application | Open Browser, Calculator, or Notepad | FR-04, FR-05 |
| UC-06 | Adjust System Volume | Increase or decrease output volume | FR-05 |
| UC-07 | Display Current Time | Display the current local system time | FR-05 |
| UC-08 | Perform Web Search | Open a browser search with a validated query | FR-05 |
| UC-09 | View Command Feedback | View recognized text and execution results | FR-06 |
| UC-10 | Handle Unsupported Command | Reject unknown or disallowed requests | FR-07, NFR-06 |
| UC-11 | Handle Microphone Error | Display an error without crashing the application | FR-07 |
| UC-12 | View and Clear Session History | Inspect or clear commands from the active session | FR-09 |

### 4.4 Common Command Processing

A supported command, whether spoken or typed, passes through a common processing and validation workflow.

For voice input, the system first performs speech recognition.

For text input, the system bypasses audio capture and speech recognition, then proceeds through the same command interpretation and validation stages.

The main command-processing operation includes:

- Text normalization.
- Intent identification.
- Command validation.
- Result reporting.

Unsupported commands and operational failures trigger appropriate error-handling behavior.

### 4.5 Example Use Case — Open Calculator

**Actor:** Windows User.

**Preconditions:**

- Qazaq Voice is running.
- The user has access to a valid input method.
- Windows Calculator is available.

**Main Flow:**

1. The user activates microphone recording.
2. The user says "Калькуляторды аш".
3. The system transcribes the recorded Kazakh speech.
4. The system identifies the intent `open_calculator`.
5. The command validator approves the intent.
6. The Windows executor attempts to launch Calculator.
7. The interface displays the execution result.

**Alternative Flow:**

If the recognized phrase does not match an allowed intent, the system displays an unsupported-command message without launching an application.

**Postcondition:**

Calculator is opened successfully, or a recoverable error is reported.

### 4.6 Example Use Case — Unsupported Command

**Actor:** Windows User.

1. The user provides an unsupported voice or text command.
2. The system attempts to identify its intent.
3. The intent recognition component returns `UNKNOWN`.
4. The validator rejects the request.
5. No Windows action is executed.
6. The interface reports that the command is unsupported.

The system remains available for further interaction.

### 4.7 Diagram Artifact

The Use Case Diagram must include the primary user, the supporting Windows actor, the main use cases, and a clearly defined Qazaq Voice system boundary.

**Expected diagram:** `diagrams/02-use-cases.png`

**Editable source:** `diagrams/02-use-cases.mmd` (Mermaid source).

## 5. Component Diagram

### 5.1 Purpose

The Component Diagram describes the proposed internal software structure and the responsibilities of its main components.

The architecture follows a modular approach in which speech recognition, command interpretation, validation, and Windows execution are separated.

### 5.2 Main Components

| Component | Responsibility | Input | Output |
|---|---|---|---|
| Desktop UI | Manage user interaction, microphone controls, text input, and visual feedback | User interactions and processing results | User requests and displayed information |
| Audio Capture | Manage microphone permissions, recording, and audio input | Microphone input | Audio buffer or capture error |
| Audio Preprocessing | Validate and prepare recorded audio | Audio buffer | Prepared audio |
| Neural ASR Adapter | Convert spoken Kazakh audio into text | Prepared audio | Transcript or recognition error |
| Text Normalization | Normalize transcribed or typed text | Raw text | Normalized text |
| Intent Recognition | Map normalized text to supported command intents | Normalized text | Intent identifier and parameters, or `UNKNOWN` |
| Action Validator | Verify intent and parameters against the command allowlist | Intent and parameters | Approved request or rejection |
| Windows Executor | Execute predefined operating-system actions | Approved structured request | Action result or execution error |
| Feedback and Session History | Present results and maintain temporary session records | Transcripts, results, errors | UI feedback and session history |

### 5.3 Desktop UI

The proposed UI framework is PySide6, which provides Python bindings for Qt [R19].

The Desktop UI is responsible for:

- Microphone activation and deactivation.
- Text-based command submission.
- Display of recognized Kazakh text.
- Listening and processing indicators.
- Success and error messages.
- Session history management.

The UI must remain usable even if speech recognition fails.

The existing HTML mockup is a design prototype and is not a completed PySide6 implementation.

### 5.4 Audio Capture and Preprocessing

The Audio Capture component manages access to the microphone and recording sessions.

Recording begins only after an explicit user action.

The preprocessing component prepares captured audio according to the selected ASR model's requirements.

Potential operations include validating the audio format, converting the sample rate, and checking for invalid or empty input.

Optional noise processing may be added after evaluation.

### 5.5 Neural ASR Adapter

The Neural ASR Adapter provides a replaceable interface for speech recognition.

Candidate technologies include Whisper [R5] and models adapted from XLS-R [R6].

The adapter should expose a consistent transcription interface regardless of the underlying implementation.

Conceptually, the operation is:

`transcribe(audio) → transcript or error`

The final ASR model has not been selected.

The architecture must therefore avoid coupling command execution logic to a specific neural network.

### 5.6 Text Normalization and Intent Recognition

The Text Normalization component receives text from two possible sources:

1. The Neural ASR Adapter.
2. The Desktop UI text-input field.

It prepares the text for command interpretation.

The Intent Recognition component maps normalized phrases to predefined intent identifiers.

The planned MVP uses a rule-based approach with an explicit set of supported commands.

Possible outcomes include:

- `open_browser`
- `open_calculator`
- `open_notepad`
- `volume_up`
- `volume_down`
- `show_time`
- `web_search`
- `UNKNOWN`

The intent recognition component does not execute operating-system actions directly.

### 5.7 Action Validator

The Action Validator is the main security boundary between language interpretation and operating-system execution.

It verifies that:

- The intent belongs to the approved command allowlist.
- Required parameters are present.
- Parameters satisfy defined validation rules.
- The requested action is permitted by the application's current policy.

Rejected commands must not reach the Windows Executor.

The validator must accept structured intent data rather than executable command strings.

### 5.8 Windows Executor

The Windows Executor performs predefined actions after successful validation.

Possible operations include:

- Opening approved applications.
- Adjusting Windows output volume.
- Reading the local system time.
- Opening a validated web-search URL.

The implementation may use documented Windows APIs and controlled process-launch mechanisms. Microsoft documents process creation through interfaces such as CreateProcessW [R22].

The exact API must be selected separately for each action.

Microsoft UI Automation [R23] may be considered in later development if the project requires interaction with application interface elements.

The initial MVP does not require unrestricted UI automation.

### 5.9 Feedback and Session History

This component communicates execution results to the user.

Possible states include:

- Idle.
- Listening.
- Processing.
- Command recognized.
- Action completed.
- Unsupported command.
- Recognition error.
- Execution error.

Command history should be stored only for the active session unless the project later defines and approves a persistent storage policy.

Raw audio is not intended to be permanently stored by default.

## 6. Main Processing Workflows

### 6.1 Voice Command Workflow

The normal voice-command workflow consists of the following steps:

1. The user activates recording.
2. Audio Capture records the spoken command.
3. Audio Preprocessing prepares the captured signal.
4. The ASR Adapter generates a Kazakh transcription.
5. Text Normalization processes the transcription.
6. Intent Recognition identifies a supported intent or returns `UNKNOWN`.
7. The Action Validator checks the intent and any parameters.
8. The Windows Executor performs the approved action.
9. Feedback reports the execution result to the user.

If ASR fails, the system displays an error without invoking the Windows Executor.

If the intent is unknown or rejected, no Windows action is performed.

### 6.2 Text-Based Command Workflow

The user may also enter a command using the desktop interface.

The workflow is:

`Text Input → Text Normalization → Intent Recognition → Action Validator → Windows Executor → Feedback`

This path bypasses microphone recording and neural speech recognition.

Both input methods use the same command validation rules.

### 6.3 Example Data Flow

**Voice input:** "Калькуляторды аш"

**ASR transcript:** "Калькуляторды аш"

**Normalized text:** "калькуляторды аш"

**Detected intent:** `open_calculator`

**Validator result:** Approved.

**Executor request:** Open the predefined Windows Calculator application.

**Expected result:** Calculator opens and the UI displays successful execution.

This example illustrates the planned behavior. It is not evidence of an implemented or tested speech-recognition pipeline.

## 7. Component Interfaces and Data Structures

The system will use structured data between major components.

The following conceptual interfaces are proposed.

| Data Structure | Main Fields | Purpose |
|---|---|---|
| AudioInput | Audio buffer, sample rate, duration | Transfer recorded audio to the ASR module |
| TranscriptionResult | Transcript, status, error information | Transfer speech recognition output |
| IntentResult | Intent ID, validated candidate parameters, status | Transfer identified command intent |
| ActionRequest | Approved intent ID, validated parameters | Transfer authorized actions to Windows Executor |
| ActionResult | Success status, action type, error information | Report execution outcomes |

The final implementation may use Python classes or dataclasses.

The precise schemas will be defined during development.

## 8. Security and Trust Boundaries

### 8.1 Untrusted Input Boundary

Speech transcriptions and typed commands are considered untrusted input.

They cannot directly control operating-system execution.

### 8.2 Validation Boundary

Only supported intent identifiers with validated parameters may pass into the Windows Executor.

No raw speech text may be forwarded directly to a system shell.

### 8.3 Restricted Application Execution

Application-launch actions must use predefined executable targets or approved system mechanisms.

The system must not construct executable paths or shell instructions directly from unrestricted user text.

### 8.4 Web Search Safety

The `web_search` intent may contain a user-provided search query.

The query must be validated and correctly URL-encoded before opening a search URL.

It must not be interpreted as a terminal command.

### 8.5 Privacy Boundary

The microphone must be activated by the user.

The application must clearly indicate recording status.

Permanent audio storage and external transmission are not included in the baseline architecture.

Any later use of remote speech processing requires a documented privacy decision.

## 9. Relationship to System Requirements

The architecture is designed to satisfy the requirements defined in KVC-6.

| Requirement | Relevant Component or Architectural Feature |
|---|---|
| FR-01 — Microphone Control | Desktop UI, Audio Capture |
| FR-02 — Kazakh Speech Recognition | Neural ASR Adapter |
| FR-03 — Transcript Display | Desktop UI, Feedback |
| FR-04 — Intent Recognition | Text Normalization, Intent Recognition |
| FR-05 — Windows Actions | Action Validator, Windows Executor |
| FR-06 — User Feedback | Desktop UI, Feedback |
| FR-07 — Error Handling | ASR Adapter, Validator, Executor, Feedback |
| FR-08 — Manual Fallback | Desktop UI, shared text-command processing pipeline |
| FR-09 — Session History | Feedback and Session History |
| FR-10 — Offline Recognition | Local ASR deployment option, if selected |
| NFR-01 — Recognition Quality | Replaceable ASR Adapter and evaluation interface |
| NFR-02 — Intent Accuracy | Independently testable Intent Recognition |
| NFR-03 — Action Reliability | Windows Executor and result reporting |
| NFR-04 — Latency | Timing measurements across processing stages |
| NFR-05 — Stability | Structured error handling between components |
| NFR-06 — Security | Command Allowlist and Action Validator |
| NFR-07 — Privacy | Explicit recording, controlled audio lifecycle |
| NFR-08 — Usability | Desktop UI, visual feedback, manual input |
| NFR-09 — Windows Compatibility | Windows-specific Executor and deployment |
| NFR-10 — Maintainability | Modular component boundaries |

## 10. Architectural Decisions

| Decision | Proposed Approach | Status |
|---|---|---|
| Application platform | Windows 11 desktop | Proposed |
| UI technology | PySide6 | Proposed |
| Main application language | Python | Proposed |
| Neural speech recognition | Replaceable ASR Adapter | Final model open |
| Intent recognition | Rule-based mapping for MVP | Proposed |
| Command validation | Fixed allowlist and parameter checking | Proposed |
| OS integration | Documented Windows APIs and approved application launching | Proposed |
| Voice processing | User-initiated recording | Proposed |
| Offline inference | Local ASR candidate | Open |
| Persistent history | Not required for MVP | Deferred |

These decisions must remain consistent with the technology comparison in KVC-5.

## 11. Architecture Verification Plan

The architecture will be verified through a combination of component testing, integration testing, and end-to-end evaluation.

### Component Testing

Test individual components independently, including text normalization, intent recognition, command validation, and Windows action mapping.

### Integration Testing

Verify communication between the ASR Adapter, Intent Recognition, Action Validator, and Windows Executor.

### End-to-End Testing

Provide spoken Kazakh commands and verify that the expected Windows action occurs.

### Negative Testing

Verify that unsupported commands, malformed parameters, microphone errors, and recognition failures do not cause unintended Windows actions.

### Performance Testing

Measure transcription time, command-processing time, execution latency, and end-to-end response time.

The exact evaluation metrics and test cases are documented in KVC-9.

## 12. Required Diagram Deliverables

The architecture documentation must include three consistent diagrams.

| Diagram | Expected Image Export | Editable Source |
|---|---|---|
| System Context Diagram | `diagrams/01-system-context.png` | `diagrams/01-system-context.mmd` |
| Use Case Diagram | `diagrams/02-use-cases.png` | `diagrams/02-use-cases.mmd` |
| Component Diagram | `diagrams/03-component-diagram.png` | `diagrams/03-component-diagram.mmd` |

The repository contains editable Mermaid `.mmd` sources and corresponding `.png` exports for all three diagrams.

**Diagram status:** Drafts requiring final review and alignment with the approved architecture.

## 13. Current Implementation Status and Limitations

At the first checkpoint, the system architecture is a proposed design.

The project has an interactive HTML-based UI mockup, but the following components have not yet been demonstrated as integrated working software:

- Kazakh neural speech recognition.
- Real-time microphone processing through the complete pipeline.
- Final intent recognition implementation.
- Approved Windows command execution.
- End-to-end testing and benchmarking.

The diagrams describe planned component boundaries and interactions rather than verified runtime behavior.

Potential accessibility benefits and recognition performance remain subjects for future evaluation.

## 14. Conclusion

The proposed architecture provides a modular foundation for a Kazakh-language voice assistant integrated with Windows 11.

The System Context Diagram defines the application boundary and external interactions.

The Use Case Diagram identifies the main functions available to Windows users.

The Component Diagram describes the internal processing pipeline and security boundaries between language interpretation and operating-system execution.

The architecture supports both speech and text input, restricts Windows actions through a command allowlist, and separates ASR, intent recognition, and execution responsibilities.

These design decisions establish the basis for future implementation, technical testing, and evaluation.

## References

**[R5]** Radford, A., et al. (2023). *Robust Speech Recognition via Large-Scale Weak Supervision*. Proceedings of ICML 2023.

https://proceedings.mlr.press/v202/radford23a.html

**[R6]** Babu, A., et al. (2022). *XLS-R: Self-supervised Cross-lingual Speech Representation Learning at Scale*. Proceedings of Interspeech 2022.

https://www.isca-archive.org/interspeech_2022/babu22_interspeech.html

**[R19]** Qt Group. *Qt for Python — PySide6 Documentation*. Official documentation. Accessed October 23, 2026.

https://doc.qt.io/qtforpython-6/

**[R22]** Microsoft Learn. *CreateProcessW Function*. Windows API documentation. Accessed October 23, 2026.

https://learn.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-createprocessw

**[R23]** Microsoft Learn. *UI Automation Clients Overview*. Windows desktop documentation. Accessed October 23, 2026.

https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-clientsoverview

## Related Project Documents

- [KVC-1 — Project Proposal](KVC-01_PROJECT_PROPOSAL.md)
- [KVC-5 — Technology Comparison](KVC-05_TECHNOLOGY_COMPARISON.md)
- [KVC-6 — Requirements Specification](KVC-06_REQUIREMENTS_SPECIFICATION.md)
- [KVC-8 — UX Prototype](KVC-08_UX_PROTOTYPE.md)
- [KVC-9 — Verification and Evaluation Plan](KVC-09_VERIFICATION_PLAN.md)