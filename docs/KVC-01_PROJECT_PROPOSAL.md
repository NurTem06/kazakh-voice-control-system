# KVC-1 — Project proposal and scope

**Official title:** Development of an Intelligent Voice Control System in the Kazakh Language Based on Neural Networks.

**AITU:** Software Engineering · SE-2413 · first checkpoint 24 October 2026.

**Members:** Temirgali Nurislam Kairatuly; Myrzatay Alan Abayuly; Abdigali Nurassyl Zhandosuly. **Supervisor:** Turarova Marzhan Kabdikalievna.

**Concept confirmed in the student's account of the 22 October 2026 consultation:** an intelligent Kazakh-language voice assistant inspired by Siri/Yandex Alice interaction, **integrated with the Windows operating system**, rather than only controlling an internal website. The consultation summary has not been signed off by the supervisor.

## Problem statement

Windows voice interaction is a practical mode of computer use, yet availability of **Kazakh-language OS-level command workflows** should be carefully evaluated rather than assumed. Microsoft lists supported Windows Voice Access languages in its documentation; Kazakh is not in that published list as checked for this draft [R1]. The existence of Kazakh speech corpora [R2, R3] and research on multilingual Turkic speech recognition [R4] does not guarantee a reliable Kazakh desktop command interface. The project investigates that missing link.

## Intended users and value

Primary: Kazakh-speaking Windows users who want hands-free control. Secondary **candidate groups**: older adults and people with mobility/access needs. Improved accessibility is a **design hypothesis**; it has not yet been shown in a user study. Different disabilities imply different accessibility requirements. A voice-only interface must retain non-voice fallback.

## Aim

Design, implement in later stages, and evaluate a **Windows 11 desktop assistant** that converts spoken Kazakh into recognized intents and executes **only a constrained allowlist** of safe OS actions with feedback and recoverable errors.

## Objectives

1. Validate relevance and target user needs with 3–5 real consultations or real-client agreement.
2. Analyze at least 12 sources and existing systems; compare ASR, desktop UI, and Windows integration choices.
3. Specify testable functional and nonfunctional requirements.
4. Design system context, use case, and component architecture with an explicit Windows security boundary.
5. Build a static/interactable desktop UI **mock** for voice-control flows.
6. Later integrate Kazakh ASR, intent detection, and Windows execution; evaluate WER/CER, task success, latency and safety.

## Scope of first MVP (planned, not implemented)

- Start/stop microphone recording; transcribe Kazakh speech; show transcript and confidence/uncertainty feedback.
- Match safe intents: `open_browser`, `open_calculator`, `open_notepad`, `volume_up`, `volume_down`, `show_time`, `web_search` (with validated query).
- Confirm sensitive actions where appropriate; refuse unsupported speech and do not pass recognized text to shells.
- Record minimal non-sensitive diagnostic data only with defined retention policy.

**Exclusions:** arbitrary terminal execution; deletion/shutdown/restart commands; financial operations; always-on microphone; smart-home hardware; guarantees of full accessibility. Offline local ASR is a candidate, not yet confirmed.

## Expected engineering deliverables

Neural ASR integration, modular Windows desktop interface, intent classifier/grammar, controlled Windows API bridge, test harness and metrics, task-linked repository, research documentation, and a demonstration with failure cases.

## 24 October checkpoint boundary

This stage requires **research, requirements, design, prototype, evaluation plan, supervisor input, and verifiable contributions**, **not a complete working assistant**. The prepared HTML desktop-style mockup is an interactive design demonstration; it does not perform voice recognition or Windows actions.

## Open decisions

Final ASR model, target hardware, approved commands and quantitative goals require evidence-based review with the supervisor.

## References

**[R1]** Microsoft Support. *Set up voice access*. Microsoft. Accessed October 23, 2026.

https://support.microsoft.com/en-us/accessibility/windows/voice-access/set-up-voice-access

**[R2]** Khassanov, Y., Mussakhojayeva, S., Mirzakhmetov, A., Adiyev, A., Nurpeiissov, M., & Varol, H. A. (2021). *A Crowdsourced Open-Source Kazakh Speech Corpus and Initial Speech Recognition Baseline*. Proceedings of the 16th Conference of the European Chapter of the Association for Computational Linguistics (EACL 2021), 697–706.

https://aclanthology.org/2021.eacl-main.58/

DOI: https://doi.org/10.18653/v1/2021.eacl-main.58

**[R3]** Mussakhojayeva, S., Khassanov, Y., & Varol, H. A. (2022). *KSC2: An Industrial-Scale Open-Source Kazakh Speech Corpus*. Proceedings of Interspeech 2022, 1367–1371.

https://www.isca-archive.org/interspeech_2022/mussakhojayeva22_interspeech.html

DOI: https://doi.org/10.21437/Interspeech.2022-421

**[R4]** Mussakhojayeva, S., Dauletbek, K., Yeshpanov, R., & Varol, H. A. (2023). *Multilingual Speech Recognition for Turkic Languages*. Information, 14(2), Article 74.

https://www.mdpi.com/2078-2489/14/2/74

DOI: https://doi.org/10.3390/info14020074