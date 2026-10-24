# KVC-11 — Supervisor Feedback and Consultation Record

## 1. Introduction

This document records the supervisor consultation and the resulting project decisions for **Qazaq Voice**.

**Official project title:** Development of an Intelligent Voice Control System in the Kazakh Language Based on Neural Networks.

**University:** Astana IT University

**Program:** Software Engineering

**Group:** SE-2413

**Supervisor:** Turarova Marzhan Kabdikalievna

**Consultation date:** 22 October 2026

**Consultation format:** Remote verbal discussion, as reported by the student.

**Record status:** Student-prepared consultation summary. Formal supervisor confirmation is pending.

The purpose of this document is to track the guidance received from the supervisor, explain how it influences the project, and identify the resulting modifications to the research, requirements, architecture, prototype, and evaluation plan.

## 2. Consultation Background

The consultation focused on clarifying the intended functionality and practical relevance of the diploma project.

The project was initially discussed as an intelligent Kazakh-language voice control system.

An important issue was determining whether the proposed assistant should operate only within its own interface or interact directly with the computer's operating system.

According to the student's summary of the discussion, the supervisor emphasized a broader voice-assistant concept, comparable in interaction style to Siri or Yandex Alice.

The student's understanding of the proposed direction is a Kazakh-language assistant capable of performing selected Windows operating-system actions.

The supervisor also highlighted the importance of Kazakh-language interaction and the potential relevance of voice control for users who may benefit from alternative methods of computer interaction.

The following sections summarize these reported recommendations and the team's responses.

## 3. Supervisor Feedback Summary

| ID | Feedback Reported by Student | Interpretation for the Project |
|---|---|---|
| SF-01 | Develop a voice assistant conceptually similar to Siri or Yandex Alice | Design a system that receives natural-language voice requests and provides understandable responses |
| SF-02 | The assistant should interact with the operating system rather than only an internal website | Target Windows 11 desktop operations and predefined OS commands |
| SF-03 | Emphasize support for the Kazakh language | Make Kazakh speech recognition and command interpretation central project objectives |
| SF-04 | Consider usefulness for older adults and people with disabilities | Investigate accessible interaction methods and retain appropriate non-voice alternatives |

**Evidence status:** These items are based on the student's account of the consultation. The exact wording has not been independently confirmed by the supervisor.

## 4. Feedback Analysis and Team Responses

### 4.1 SF-01 — Voice Assistant Interaction Concept

**Reported guidance:**

The proposed product should resemble established voice assistants, such as Siri or Yandex Alice, in its interaction concept.

**Team interpretation:**

The system should accept spoken requests, interpret user intentions, and provide understandable feedback.

However, it does not need to reproduce the complete functionality of commercial general-purpose assistants.

**Proposed response:**

The project will use a modular voice-command processing pipeline:

**Kazakh Speech → Neural ASR → Intent Recognition → Action Validation → Windows Execution → User Feedback**

The first MVP will support a limited number of commands.

**Affected documents:**

- KVC-1 — Project Proposal.
- KVC-5 — Technology Comparison.
- KVC-6 — Requirements Specification.
- KVC-7 — System Architecture.

### 4.2 SF-02 — Operating-System Integration

**Reported guidance:**

The assistant should interact with the operating system rather than functioning only inside its own website.

**Team interpretation:**

The system should be developed as a Windows desktop application capable of performing selected operating-system actions.

**Proposed response:**

Windows 11 was selected as the target platform for the proposed implementation.

The initial system scope includes seven predefined command categories:

1. `open_browser`
2. `open_calculator`
3. `open_notepad`
4. `volume_up`
5. `volume_down`
6. `show_time`
7. `web_search`

The command execution component will use an explicit allowlist to reduce the risk of unintended actions.

**Affected documents:**

- KVC-1 — Project scope.
- KVC-5 — Desktop technology selection.
- KVC-6 — Functional requirements.
- KVC-7 — Architecture.
- KVC-8 — UX prototype.
- KVC-9 — Verification plan.

**Current limitation:**

The existing HTML prototype simulates Windows command execution. Real operating-system integration remains future development work.

### 4.3 SF-03 — Kazakh-Language Focus

**Reported guidance:**

Kazakh-language interaction should be emphasized as a central aspect of the project.

**Team interpretation:**

The main research and engineering objective is not merely to create another voice assistant, but to investigate reliable Kazakh-language speech recognition and its integration with selected Windows commands.

**Proposed response:**

The research focuses on:

- Kazakh speech recognition.
- Language-specific transcription errors.
- Regional pronunciation variation.
- Kazakh–Russian code-switching.
- Intent classification.
- End-to-end Windows command execution.
- Recognition and execution reliability.

The technology comparison identifies Whisper, XLS-R, and other candidate ASR approaches.

Their suitability will be determined through future evaluation.

**Important clarification:**

The project must not claim that no existing assistant supports Kazakh.

The existing-system comparison recognizes that Yandex Alice supports Kazakh in documented product experiences.

The proposed engineering contribution is a dedicated, measurable **Kazakh speech-to-Windows-command workflow**, rather than being the first Kazakh-language voice assistant.

**Affected documents:**

- KVC-2 — Evidence of Relevance.
- KVC-3 — Literature Review.
- KVC-4 — Existing Systems Comparison.
- KVC-5 — Technology Comparison.
- KVC-9 — Evaluation Plan.

### 4.4 SF-04 — Potential Accessibility Benefits

**Reported guidance:**

The project may be useful for older adults and people with disabilities.

**Team interpretation:**

Voice interaction may offer an additional way to use computers for some users.

However, different user groups have different needs, and voice-only interaction will not be appropriate for everyone.

**Proposed response:**

The planned interface includes:

- Clear command feedback.
- Visible recording status.
- Error messages.
- Keyboard and mouse interaction.
- Text-based command submission.
- Recoverable error states.

Future development should investigate readability, keyboard navigation, text scaling, contrast, and accessibility testing with representative users.

**Current limitation:**

The team has not performed a dedicated accessibility evaluation with older adults or participants with specific disabilities.

Therefore, accessibility benefits remain proposed use cases rather than scientifically validated outcomes.

**Affected documents:**

- KVC-1 — Intended Users.
- KVC-2 — User Needs Assessment.
- KVC-6 — Non-Functional Requirements.
- KVC-8 — UX Prototype.
- KVC-9 — Usability Evaluation.

## 5. Feedback-to-Revision Traceability

The table below identifies how the reported guidance has influenced the checkpoint materials.

| Feedback ID | Related Task | Documented Response | Current Status |
|---|---|---|---|
| SF-01 | KVC-1 | Project concept describes an intelligent voice assistant rather than a simple website interface | Draft prepared |
| SF-01 | KVC-7 | Architecture separates speech recognition, intent recognition, and action execution | Draft prepared |
| SF-02 | KVC-5 | Windows desktop technologies and operating-system integration approaches compared | Draft prepared |
| SF-02 | KVC-6 | Seven approved Windows commands and security requirements specified | Draft prepared |
| SF-02 | KVC-7 | Windows operating system and action-validation boundary represented in the proposed architecture | Diagrams prepared for review |
| SF-02 | KVC-8 | Windows-style UX prototype demonstrates command scenarios | Interactive simulation prepared |
| SF-03 | KVC-3 | Kazakh speech corpora and multilingual ASR research reviewed | Draft prepared |
| SF-03 | KVC-4 | Existing voice assistants compared, including documented Kazakh support | Draft prepared |
| SF-03 | KVC-9 | WER, CER, intent accuracy, and command execution metrics defined | Evaluation plan prepared |
| SF-04 | KVC-2 | Preliminary user preferences and interaction concerns analyzed | Questionnaire results documented |
| SF-04 | KVC-6 | Manual fallback and usability requirements included | Draft prepared |
| SF-04 | KVC-8 | Visible controls, text input, and error feedback included in the prototype | Demonstrated through UI simulation |
| SF-04 | KVC-9 | Usability and accessibility checks planned | Testing pending |

The statuses above refer to documented preparation work, not formal supervisor approval or completed implementation.

The corresponding Git revisions and independent reviews must be recorded after the finalized materials are committed.

## 6. Current Project Decisions

Following the consultation, the project documentation uses the following provisional technical direction.

| Area | Current Decision | Approval Status |
|---|---|---|
| Target platform | Windows 11 desktop | Proposed |
| Primary language | Kazakh | Central project requirement |
| Application type | Intelligent voice assistant with selected OS actions | Proposed |
| ASR model | To be selected through benchmarking | Open |
| Main language | Python | Proposed |
| Desktop UI | PySide6 | Proposed |
| Intent recognition | Rule-based matching for MVP | Proposed |
| Windows execution | Documented Windows APIs and controlled application launching | Proposed |
| Security | Fixed allowlist of approved commands | Proposed |
| UX interaction | Voice-first interface with manual alternatives | Proposed |
| Evaluation | WER, CER, intent accuracy, task success, latency, safety | Planned |

These decisions reflect the current project documentation and require final technical validation.

They should not be interpreted as independently approved technical choices unless the supervisor explicitly confirms them.

## 7. Consultation Evidence

### 7.1 Available Evidence

The consultation took place on 22 October 2026, according to the student's account.

The student subsequently documented the main recommendations and their interpretation.

**Supporting record:**

[SUPERVISOR_CONSULTATION_2026-10-22.md](SUPERVISOR_CONSULTATION_2026-10-22.md)

This record provides a dated summary of the reported discussion and links it to subsequent project decisions.

### 7.2 Evidence Limitations

The current documentation does not include:

- A supervisor-approved meeting protocol.
- A signed feedback form.
- A supervisor confirmation message.
- A recorded review of every KVC document.
- A verified list of technical decisions formally approved by the supervisor.

Therefore, the existing record must be described as a student-prepared consultation summary.

The absence of formal confirmation must not be presented as evidence that the supervisor approved all project documents.

### 7.3 Confirmation Procedure

The consultation summary should be sent to the supervisor for review.

The supervisor should be invited to:

1. Confirm or correct the recorded recommendations.
2. Clarify the intended system platform and scope.
3. Comment on the planned Windows command set.
4. Review the proposed technical and evaluation approaches where appropriate.
5. Identify any further corrections needed before the checkpoint.

Any confirmation or correction should be added to this document with its date and evidence reference.

## 8. Supervisor Review and Correction Log

This log will record actual confirmed reviews and subsequent modifications.

| Date | Reviewed Material | Confirmed Supervisor Comment | Required Correction | Responsible Member | Evidence |
|---|---|---|---|---|---|
| 22 Oct 2026 | General project concept | Student-reported verbal guidance; confirmation pending | Clarify Windows OS integration and Kazakh-language focus | Project team | Consultation summary |
| Pending | Checkpoint documentation | Awaiting review or confirmation | To be recorded | To be assigned | Pending |
| Pending | Architecture and prototype | Awaiting review or confirmation | To be recorded | To be assigned | Pending |

The first row is not a signed supervisor review.

Additional rows must be completed only after real feedback is received.

## 9. Follow-Up Actions

The following actions remain necessary to close KVC-11.

- [ ] Send the 22 October consultation summary to the supervisor.
- [ ] Obtain confirmation or corrections to the recorded guidance.
- [ ] Confirm the final Windows desktop scope and MVP command set.
- [ ] Record any requested revisions to requirements, architecture, or UX.
- [ ] Apply genuine requested changes.
- [ ] Preserve the actual message, review comment, or other evidence.
- [ ] Link relevant revisions to GitHub commits or pull requests.
- [ ] Update the corresponding YouTrack task.

**YouTrack Issue:** https://kazakh-voice-control.youtrack.cloud/issue/KVC-11

**GitHub Repository:** https://github.com/NurTem06/kazakh-voice-control-system

## 10. Current Completion Status

The following parts of KVC-11 are prepared:

- A dated consultation summary.
- A structured interpretation of the reported supervisor guidance.
- A list of resulting proposed project decisions.
- Traceability between reported feedback and project documentation.
- A follow-up checklist and review log.
- Formal confirmation or correction of the consultation summary.
- Verified supervisor review comments.
- Evidence of revisions resulting from confirmed feedback.
- References to the corresponding reviewed Git changes.

**Current status:** Accepted. Work is in progress..

The KVC-11 task should remain open or under review until the required supervisor-feedback evidence has been obtained.

## 11. Conclusion

The reported consultation of 22 October 2026 helped clarify the intended direction of Qazaq Voice.

The project is now documented as a proposed Kazakh-language Windows desktop voice assistant that will recognize spoken commands, identify supported user intents, validate requested actions, and execute a limited set of safe operating-system functions.

The consultation summary also influenced the project's research positioning and its consideration of potential accessibility benefits.

These changes are reflected across the project proposal, technology comparison, requirements, architecture, UX prototype, and evaluation plan.

However, the consultation record currently reflects the student's account of verbal guidance rather than a formally verified supervisor review.

Completing KVC-11 requires confirmation of the reported feedback, documentation of any requested corrections, and traceable evidence of the resulting changes.

## Related Documents

- [Consultation Record — 22 October 2026](SUPERVISOR_CONSULTATION_2026-10-22.md)
- [KVC-1 — Project Proposal](KVC-01_PROJECT_PROPOSAL.md)
- [KVC-4 — Existing Systems Comparison](KVC-04_EXISTING_SYSTEM_COMPARISON.md)
- [KVC-5 — Technology Comparison](KVC-05_TECHNOLOGY_COMPARISON.md)
- [KVC-6 — Requirements Specification](KVC-06_REQUIREMENTS_SPECIFICATION.md)
- [KVC-7 — System Architecture](KVC-07_ARCHITECTURE.md)
- [KVC-8 — UX Prototype](KVC-08_UX_PROTOTYPE.md)
- [KVC-9 — Verification Plan](KVC-09_VERIFICATION_PLAN.md)
- [KVC-10 — Project Management](KVC-10_PROJECT_MANAGEMENT_RISKS.md)
