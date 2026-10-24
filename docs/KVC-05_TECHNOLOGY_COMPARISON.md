# KVC-5 — Technology Alternatives and Technical Decisions

## 1. Overview

The objective of this section is to compare technical alternatives for implementing **Qazaq Voice**, an intelligent Kazakh-language voice assistant designed to execute a limited set of safe commands on Windows 11.

The first checkpoint requires at least three key technical decisions, with two or three alternatives considered for each decision.

This analysis covers five major technical decisions:

1. Neural speech recognition technology.
2. Desktop user interface framework.
3. Application and orchestration language.
4. Intent recognition approach.
5. Windows operating-system integration.

The technologies are evaluated in relation to the project's requirements, security constraints, development complexity, and expected deployment environment.

**Important:** These comparisons are based on published research, official technical documentation, and engineering considerations. They are not experimental results obtained by the project team.

## 2. Decision 1 — Automatic Speech Recognition (ASR)

Automatic Speech Recognition converts spoken Kazakh audio into text. It is a core component of the proposed system.

Three candidate model families were identified.

| Technology | Advantages | Limitations | Project suitability |
|---|---|---|---|
| Whisper multilingual [R5] | Pretrained multilingual ASR; established research and tooling | Kazakh command accuracy and local resource requirements must be measured | Strong initial baseline candidate |
| XLS-R [R6] | Multilingual self-supervised representations; can be adapted to target-language data | Requires selection or fine-tuning of a suitable ASR checkpoint | Candidate for Kazakh-specific adaptation |
| NVIDIA NeMo Fast Conformer [R8] | Architecture developed for efficient speech recognition | Model architecture alone does not establish availability or quality of a Kazakh checkpoint | Alternative requiring checkpoint and deployment evaluation |

### Evaluation criteria

The ASR candidates should be compared using:

- Word Error Rate (WER).
- Character Error Rate (CER).
- Recognition accuracy on short Kazakh commands.
- Performance under background noise.
- Performance with regional pronunciation differences and code-switching.
- Inference latency.
- CPU/GPU and memory requirements.
- Checkpoint availability and licensing.

### Preliminary decision

**Decision status: OPEN**

Whisper is proposed as an initial baseline because pretrained multilingual implementations are available for experimentation.

However, the final ASR technology cannot be selected solely on published benchmark results.

The team must identify runnable checkpoints and compare them using the same Kazakh-language evaluation set and hardware.

The selected solution may differ from the initial recommendation depending on measured accuracy, latency, and deployment constraints.

## 3. Decision 2 — Windows Desktop User Interface

The application requires a desktop interface displaying microphone status, recognized speech, command execution results, and error messages.

Three UI frameworks were considered.

| Technology | Advantages | Limitations | Project suitability |
|---|---|---|---|
| PySide6 (Qt for Python) [R19] | Python bindings for Qt; suitable for desktop interfaces; can share a Python application process with ASR orchestration | Packaging, deployment size, and licensing require review | Preferred initial candidate |
| WPF (.NET) [R20] | Windows-native .NET UI framework; XAML, data binding, and established desktop tooling | Typically requires a separate integration boundary when using Python-based ASR components | Suitable Windows-specific alternative |
| Tauri [R21] | Desktop UI using web technologies with a Rust-based integration layer | Introduces additional frontend/backend communication and deployment complexity | Alternative if a web-technology UI is prioritized |

### Preliminary decision

**Decision status: PROPOSED — PySide6**

PySide6 is the preferred starting point because the application is expected to rely on Python-accessible speech recognition and machine learning components.

Using Python for the UI and orchestration could simplify communication between the interface and ASR module.

WPF remains a strong alternative for a Windows-specific .NET implementation.

Tauri remains an option if the final interface uses web technologies and the additional integration work is justified.

### Relationship to the existing prototype

The currently prepared HTML-based interface is a **UX demonstration**, not a working Tauri application.

It illustrates expected user interactions and can inform the implementation of a future PySide6, WPF, or Tauri interface.

The HTML prototype does not currently perform real speech recognition or operating-system actions.

## 4. Decision 3 — Application and Orchestration Language

The application requires a coordinating layer between audio capture, the ASR engine, intent recognition, Windows command execution, and user feedback.

Three alternatives were considered.

| Language | Advantages | Limitations | Project suitability |
|---|---|---|---|
| Python | Direct access to many machine learning and speech recognition libraries; can be combined with PySide6 | Deployment, dependency management, and runtime performance require evaluation | Preferred initial orchestration language |
| Go | Compiled language with strong concurrency and service-development capabilities | May require separate processes or integration layers for Python-based ASR | Possible service-oriented alternative |
| C# / .NET | Strong Windows development ecosystem; direct compatibility with WPF and .NET APIs | Integrating some Python-oriented ML workflows may require an additional boundary | Suitable for a Windows-native alternative |

### Preliminary decision

**Decision status: PROPOSED — Python**

Python is recommended for the first implementation because it can coordinate a local ASR model, intent recognition logic, and a PySide6 desktop interface within one application architecture.

This reduces the need to introduce a separate backend service during the initial development phase.

Go may be considered if a separate service becomes necessary for concurrency, deployment, or component isolation.

C#/.NET remains a suitable alternative if the project adopts WPF and a predominantly Windows-native architecture.

These are architectural preferences, not measured claims that Python is universally faster or more efficient.

## 5. Decision 4 — Intent Recognition

After speech has been transcribed, the system must determine whether the recognized text corresponds to one of the supported Windows actions.

Three approaches were considered.

| Approach | Advantages | Limitations | Project suitability |
|---|---|---|---|
| Rule-based phrase matching | Simple, explainable, predictable, and straightforward to restrict to approved commands | Requires phrase normalization and maintenance; may struggle with linguistic variation | Preferred MVP approach |
| Supervised intent classifier | Can learn alternative command formulations from labeled examples | Requires representative labeled training and test data | Candidate for later development |
| Constrained LLM-based classifier | Potentially supports more flexible natural-language interpretation | Additional model complexity, possible latency, and uncertain output reliability | Not preferred for the initial MVP |

### Preliminary decision

**Decision status: PROPOSED — Rule-based intent recognition**

The first MVP will use a normalized phrase matcher and a restricted list of supported intents.

The proposed intent identifiers are:

1. `open_browser`
2. `open_calculator`
3. `open_notepad`
4. `volume_up`
5. `volume_down`
6. `show_time`
7. `web_search`

Recognized text will be normalized before matching.

The intent recognition component will return either a supported intent with validated parameters or an unsupported-command result.

### Security considerations

The system must not interpret arbitrary recognized speech as operating-system instructions.

Unknown commands must be rejected safely.

The ASR output must not be passed directly into a command shell.

More flexible intent recognition approaches may be considered after collecting an appropriate dataset and establishing baseline command accuracy.

## 6. Decision 5 — Windows Operating-System Integration

The application must execute approved commands on Windows while minimizing the risk of unintended or unsafe actions.

Three integration approaches were considered.

| Approach | Advantages | Limitations | Project suitability |
|---|---|---|---|
| Documented Windows APIs [R22] | Explicit interfaces for selected operating-system functions and process operations | Requires careful API selection, error handling, and Windows-specific implementation | Preferred where appropriate |
| Strictly allowlisted application launching [R22] | Suitable for opening a small set of approved applications | Unsafe if executable names, paths, or arguments are taken directly from untrusted speech | Suitable for approved app-launch commands |
| Microsoft UI Automation [R23] | Programmatic access to UI elements in compatible applications | Depends on application accessibility support and may be more complex than direct APIs | Possible later extension |

### Preliminary decision

**Decision status: PROPOSED — Windows APIs with restricted application launching**

The MVP will use documented APIs or controlled application-launch mechanisms for supported tasks.

Each intent will be mapped to a predefined execution function.

For example:

- `open_calculator` → a predefined Calculator launch action.
- `open_notepad` → a predefined Notepad launch action.
- `volume_up` → a predefined volume adjustment function.
- `show_time` → an application function that displays the system time.
- `web_search` → a browser search action with validated and encoded query text.

These mappings describe the planned architecture, not completed implementation.

The Windows executor will accept structured intent identifiers rather than raw speech transcripts.

UI Automation may be investigated in later stages if the assistant needs to interact with application interface elements beyond the initial command set.

## 7. Consolidated Technology Comparison

| Technical decision | Option A | Option B | Option C | Provisional recommendation |
|---|---|---|---|---|
| Neural ASR | Whisper [R5] | XLS-R [R6] | NeMo Fast Conformer [R8] | Compare runnable Kazakh checkpoints; final choice pending evaluation |
| Desktop UI | PySide6 [R19] | WPF [R20] | Tauri [R21] | PySide6 |
| Application language | Python | Go | C#/.NET | Python |
| Intent recognition | Rule-based matching | Supervised classifier | Constrained LLM classifier | Rule-based allowlist |
| Windows integration | Documented Windows APIs [R22] | Allowlisted process launching [R22] | UI Automation [R23] | Documented APIs and restricted app launching |

## 8. Technology Evaluation Criteria

The final technology decisions should account for the following criteria:

1. **Platform compatibility:** Support for the target Windows 11 environment.
2. **Kazakh-language recognition:** WER, CER, and performance on spoken commands.
3. **Reliability:** Successful execution of intended commands.
4. **Safety:** Rejection of unsupported or potentially dangerous actions.
5. **Performance:** Median and 95th-percentile latency.
6. **Resource usage:** CPU, GPU, RAM, storage, and model size.
7. **Privacy:** Local processing options and control of audio retention.
8. **Implementation complexity:** Integration and debugging effort.
9. **Licensing:** Compatibility with the project's intended distribution and dependencies.
10. **Maintainability:** Ability to replace models and application components independently.

## 9. Proposed System Architecture

The provisional processing pipeline is:

`PySide6 UI → Audio Capture → ASR Adapter → Text Normalization → Intent Recognition → Command Allowlist → Windows Executor → User Feedback`

### Component responsibilities

**Desktop UI:** Displays interaction status, recognized text, command results, and errors.

**Audio Capture:** Records audio only during a user-initiated interaction.

**ASR Adapter:** Converts the recorded Kazakh speech into text using the selected neural model.

**Text Normalization:** Prepares transcription text for intent matching.

**Intent Recognition:** Identifies a supported command or rejects an unknown phrase.

**Command Allowlist:** Confirms that the requested operation belongs to the approved set.

**Windows Executor:** Performs the mapped system operation and reports its result.

**User Feedback:** Displays successful execution, recognition failure, or a rejected command.

### Architectural constraints

- Speech transcription must not directly execute shell commands.
- Every supported intent must have a predefined action mapping.
- The microphone must not silently record in the background.
- The user must receive clear feedback on recognized commands.
- Unsupported commands must fail safely.
- Components should remain replaceable so alternative ASR models can be evaluated.

## 10. Architecture Decision Records (ADR)

| ADR | Decision | Status | Rationale |
|---|---|---|---|
| ADR-01 | Develop a Windows desktop application rather than a web-only assistant | Proposed | The core project objective is direct interaction with Windows |
| ADR-02 | Use Python and PySide6 for the initial implementation | Proposed | Simplifies the planned integration of UI and Python-based ASR components |
| ADR-03 | Use a fixed command allowlist for the initial MVP | Proposed | Reduces execution risk and supports predictable behavior |
| ADR-04 | Choose the final ASR model after comparative testing | Open | No project-specific benchmark results are available yet |
| ADR-05 | Use documented Windows APIs and controlled application launching | Proposed | Supports explicit command mappings and safe error handling |

These ADRs document current engineering preferences and remain subject to supervisor review and implementation evidence.

## 11. Planned Technical Evaluation

During implementation, the team will compare available ASR candidates using a reproducible evaluation procedure.

The evaluation report should include:

- Exact model and checkpoint identifiers.
- Model versions and dependencies.
- Hardware specifications.
- Dataset source and test-set separation.
- Number and categories of spoken commands.
- WER and CER.
- Intent recognition accuracy.
- Windows action success rate.
- Median and p95 end-to-end latency.
- Memory usage and deployment size.
- Error cases and safety test results.

The team should use comparable conditions when evaluating alternative solutions.

**No numerical performance ranking is claimed at this checkpoint because the required experimental results have not yet been collected.**

## 12. Conclusion

Five technical decisions were examined, each with multiple alternatives.

The proposed initial technology stack is:

- **Desktop platform:** Windows 11.
- **UI framework:** PySide6.
- **Application language:** Python.
- **ASR technology:** To be selected through comparative Kazakh speech recognition testing.
- **Intent recognition:** Rule-based matching with a fixed allowlist.
- **Operating-system integration:** Documented Windows APIs and controlled application launching.

This architecture prioritizes a manageable initial implementation, modularity, predictable command handling, and measurable performance.

The final technical configuration will be determined after prototype integration, benchmarking, licensing review, and consultation with the project supervisor.

## References

**[R5]** Radford, A., et al. (2023). *Robust Speech Recognition via Large-Scale Weak Supervision*. Proceedings of the 40th International Conference on Machine Learning (ICML 2023), PMLR 202.

https://proceedings.mlr.press/v202/radford23a.html

**[R6]** Babu, A., et al. (2022). *XLS-R: Self-supervised Cross-lingual Speech Representation Learning at Scale*. Proceedings of Interspeech 2022.

https://www.isca-archive.org/interspeech_2022/babu22_interspeech.html

**[R8]** Rekesh, D., et al. (2023). *Fast Conformer with Linearly Scalable Attention for Efficient Speech Recognition*. NVIDIA Research.

https://research.nvidia.com/publication/2023-05_fast-conformer-linearly-scalable-attention-efficient-speech-recognition

**[R19]** Qt Group. *Qt for Python — PySide6 Documentation*. Official Qt documentation. Accessed October 23, 2026.

https://doc.qt.io/qtforpython-6/

**[R20]** Microsoft Learn. *Windows Presentation Foundation (WPF) Overview*. Official Microsoft documentation. Accessed October 23, 2026.

https://learn.microsoft.com/en-us/dotnet/desktop/wpf/overview/

**[R21]** Tauri. *Tauri Architecture*. Official Tauri documentation. Accessed October 23, 2026.

https://tauri.app/concept/architecture/

**[R22]** Microsoft Learn. *CreateProcessW Function (processthreadsapi.h)*. Windows API documentation. Accessed October 23, 2026.

https://learn.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-createprocessw

**[R23]** Microsoft Learn. *UI Automation Clients Overview*. Windows desktop documentation. Accessed October 23, 2026.

https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-clientsoverview