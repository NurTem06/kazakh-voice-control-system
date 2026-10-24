# KVC-2 — Evidence of Project Relevance and User Needs Assessment

## 1. Introduction

This section evaluates the relevance of the proposed project, **"Development of an Intelligent Voice Control System in the Kazakh Language Based on Neural Networks,"** using existing research and primary data collected through an anonymous online questionnaire.

The project aims to develop a Windows desktop voice assistant that recognizes spoken Kazakh commands and performs a limited set of safe operating-system actions.

The assessment focuses on potential user needs, preferred Windows functions, expected difficulties, and the importance of alternative interaction methods.

## 2. Evidence from Existing Research

Previous research demonstrates the availability of speech datasets and recognition technologies for the Kazakh language.

Khassanov et al. [R2] introduced a 332-hour Kazakh speech corpus and an initial speech recognition baseline.

Mussakhojayeva et al. [R3] expanded the available resources through KSC2, an industrial-scale Kazakh speech corpus containing more than 1,000 hours of speech data.

Research on multilingual speech recognition for Turkic languages [R4] provides further motivation for investigating language-specific automatic speech recognition.

Microsoft's official Windows Voice Access documentation describes supported recognition languages, but Kazakh was not included in the published language list consulted for this project [R1].

These sources establish the technical and research motivation for developing a Kazakh-language Windows voice assistant. However, scientific publications alone do not demonstrate that potential users need the proposed application.

Therefore, primary user feedback was collected.

## 3. Research Methodology

### 3.1 Research Method

An anonymous online questionnaire was conducted using Microsoft Forms.

The questionnaire contained seven research questions and one consent question. It collected information about:

1. Frequency of Windows computer usage.
2. Kazakh language proficiency.
3. Existing computer interaction methods.
4. Experience with voice assistants.
5. Desired Windows voice-control functions.
6. Expected difficulties with speech interaction.
7. Preferences for voice-only or alternative interface controls.

The questions combined multiple-choice responses with open-ended answers.

### 3.2 Data Collection Period

**20–23 October 2026**

### 3.3 Participants

The exported questionnaire contains **six submitted responses**.

All six responses indicated voluntary consent to participate in the academic research.

The responses were collected anonymously, without participant names or email addresses in the export.

Five respondents reported at least basic proficiency in Kazakh. One respondent reported not speaking Kazakh and was retained as a supplementary perspective on general voice-assistant usability.

Because the questionnaire was anonymous, the available export does not independently establish that all submissions came from distinct individuals.

### 3.4 Data Source

**Primary evidence:** `Users_answers.xlsx`

The original Microsoft Forms export contains response identifiers, submission timestamps, consent selections, structured answers, and open-ended responses.

For documentation purposes, submissions are identified as **P01–P06**.

The original data should be stored with restricted access and made available to the supervisor or commission when appropriate. The public project documentation presents anonymized findings.

## 4. Participant Overview

| Participant | Submission date | Windows usage | Kazakh proficiency | Consent |
|---|---|---|---|---|
| P01 | 20 Oct 2026 | Daily | Fluent | Yes |
| P02 | 20 Oct 2026 | Rarely | Fluent | Yes |
| P03 | 20 Oct 2026 | Several times a week | Basic | Yes |
| P04 | 21 Oct 2026 | Daily | Fluent | Yes |
| P05 | 22 Oct 2026 | Daily | Conversational | Yes |
| P06 | 23 Oct 2026 | Daily | Does not speak Kazakh | Yes |

### 4.1 Windows Usage

Four of the six respondents use Windows daily. One uses Windows several times per week, and one uses Windows rarely.

This indicates that the survey includes both frequent and occasional Windows users.

### 4.2 Kazakh Language Proficiency

- Fluent: 3 respondents.
- Conversational: 1 respondent.
- Basic: 1 respondent.
- Does not speak Kazakh: 1 respondent.

Five respondents therefore have some level of Kazakh language proficiency.

The answers of P06 provide general usability feedback but should not be treated as direct evidence of Kazakh-language user needs.

### 4.3 Voice Assistant Experience

Five respondents reported experience with at least one voice assistant, including Siri or Alice.

One respondent had never used a voice assistant.

Reported interaction languages included Russian and English. No respondent explicitly reported using a voice assistant in Kazakh.

## 5. Individual Participant Findings

The following table summarizes the submitted answers. These are **researcher paraphrases**, not verbatim quotations.

| ID | Main findings | Potential design implications |
|---|---|---|
| P01 | Uses Windows daily and Siri in Russian or English. Wants basic commands such as opening applications or a browser. Raised concerns about regional Kazakh speech differences and wants manual correction options. | Support application-launch commands, investigate regional pronunciation variation, and provide visible feedback. |
| P02 | Uses Windows rarely and has no previous voice-assistant experience. Suggested controlling video volume and composing emails by speech. Expressed concern that the interface might be difficult to understand because of age-related familiarity issues. | Use a simple interface, include volume commands, and consider speech-to-text email composition as a future feature. |
| P03 | Uses Windows several times per week and has basic Kazakh proficiency. Has experience with Alice in Yandex Browser. Wants application-launch and volume commands. Expressed concern about recognition of less-proficient Kazakh speech and preferred voice-focused interaction. | Evaluate recognition of different speaking styles and prioritize basic voice commands. |
| P04 | Uses Windows daily and Siri in English. Suggested volume control and reported microphone problems. Preferred having visual controls when speech recognition fails. | Provide microphone-status feedback, error handling, and visible controls. |
| P05 | Uses Windows daily and Siri in Russian. Did not identify a specific priority command. Highlighted Kazakh–Russian code-switching and supported visual interface options. | Include code-switching scenarios in the future evaluation plan and preserve non-voice alternatives. |
| P06 | Uses Windows daily but does not speak Kazakh. Has experience with Alice and Siri in Russian. Suggested basic operations and preferred manual alternatives because voice assistants may misunderstand commands. | Provides supplementary evidence for safe command handling and fallback controls, but not direct Kazakh-language demand. |

## 6. Key Findings

### 6.1 Basic Windows Operations Were Requested

Three respondents, P02, P03, and P04, explicitly mentioned volume control.

Two respondents, P01 and P03, explicitly mentioned opening applications or a browser.

P02 additionally suggested composing emails through speech.

These answers support the decision to prioritize simple operating-system commands in the proposed minimum viable product.

Email dictation is a possible future feature and is not part of the current seven-command MVP.

### 6.2 Manual and Visual Alternatives Are Important

Five of the six respondents expressed support for visual or manual interface options.

They explained that voice assistants can misunderstand speech or fail to execute a requested action.

One respondent, P03, preferred a voice-focused interaction model and did not consider additional interface controls necessary.

This contrast suggests that the application should prioritize speech interaction while still allowing users to recover from errors through visible controls.

### 6.3 Speech Recognition Must Consider Different Speaking Conditions

The responses identified several potential recognition challenges:

- Regional Kazakh pronunciation differences (P01).
- Limited Kazakh language proficiency (P03).
- Microphone problems (P04).
- Kazakh–Russian code-switching (P05).
- General speech recognition errors (P06).

These observations suggest useful scenarios for future testing. They do not establish measured failure rates for any ASR model.

### 6.4 Interface Simplicity Matters

P02 expressed concern about understanding the application interface.

This suggests the importance of clear labels, straightforward controls, and understandable feedback messages.

However, the questionnaire did not collect participant ages or conduct an accessibility evaluation.

Consequently, this result does not establish that the application meets the needs of older adults or people with disabilities.

### 6.5 Interest in Advanced Functions Remains Unclear

The respondents generally mentioned simple computer operations rather than complex workflows.

P05 did not identify a specific desired Windows function, while P06 offered a general suggestion rather than a Kazakh-specific request.

The current evidence therefore provides preliminary support for investigating basic voice-control functions, but does not establish demand for every proposed MVP command.

## 7. Design Implications for Qazaq Voice

The questionnaire results are mapped to preliminary engineering decisions.

| Evidence | Proposed design decision | Project area |
|---|---|---|
| P01, P03 requested opening applications or a browser | Include `open_browser`, `open_calculator`, and `open_notepad` as candidate commands | Functional requirements |
| P02, P03, P04 requested volume control | Include `volume_up` and `volume_down` | Functional requirements |
| Five respondents preferred manual or visual alternatives | Maintain visible application controls and error recovery | UX and accessibility |
| P01 reported regional pronunciation concerns | Consider regional speech variation in the evaluation dataset | ASR evaluation |
| P05 reported Kazakh–Russian language mixing | Include code-switching scenarios in testing | ASR evaluation |
| P04 reported microphone issues | Display microphone state and provide understandable error messages | UX and reliability |
| P02 suggested email dictation | Record email dictation as a possible future enhancement | Future scope |
| P03 expressed concern about Kazakh proficiency | Evaluate speech recognition for speakers with different proficiency levels, where feasible | Evaluation planning |

These decisions represent design interpretations derived from the questionnaire. Their technical feasibility and effectiveness must be evaluated separately.

## 8. Relationship to the Proposed MVP

The planned MVP includes seven commands:

1. `open_browser`
2. `open_calculator`
3. `open_notepad`
4. `volume_up`
5. `volume_down`
6. `show_time`
7. `web_search`

The collected feedback offers the clearest direct support for application launching and volume adjustment.

The remaining commands are included as initial engineering scope decisions rather than individually validated user priorities.

The MVP will also provide a visible interface, microphone-status feedback, and handling of unsupported or unrecognized requests.

## 9. Limitations of the Evidence

The study has several limitations.

**Small sample size:** Only six submissions were collected. The findings cannot be generalized to all Kazakh-speaking Windows users.

**Anonymous participation:** The export contains response identifiers and timestamps but does not independently verify participants' identities or confirm that every submission came from a different individual.

**Language relevance:** One respondent does not speak Kazakh. Their response is informative about general usability but not direct demand for Kazakh-language interaction.

**Self-reported data:** The responses describe perceptions, preferences, and previous experiences. No usability experiments or ASR accuracy tests were performed.

**Accessibility evidence:** Participants' ages, disabilities, and accessibility needs were not systematically collected. The questionnaire therefore does not validate specific accessibility benefits.

**Recruitment documentation:** The spreadsheet does not describe how respondents were recruited.

**Survey rather than interviews:** The collected evidence consists of anonymous questionnaire submissions. The export does not document separate interviews or follow-up discussions.

**Potential response bias:** Question wording and the small, unverified sample may influence the observed preferences.

The findings are consequently treated as **preliminary qualitative evidence**, not statistically representative validation.

## 10. Additional Stakeholder Validation

The questionnaire provides initial feedback that can guide the project's requirements and UX design.

If the checkpoint rubric requires **3–5 distinct user consultations or documented agreement from a real client**, the anonymous questionnaire alone should not be represented as satisfying that requirement.

The next validation activity should involve three to five genuine follow-up discussions with potential users, or a substantive documented client consultation.

The team should record the date, participant category, consent, discussion method, key observations, and resulting design changes without disclosing unnecessary personal information.

## 11. Conclusion

The collected questionnaire provides preliminary evidence that several potential users are interested in basic Windows voice-control functions, particularly application launching and volume adjustment.

The strongest usability finding is the importance of retaining visible or manual controls when speech recognition fails.

Participants also highlighted potential issues involving pronunciation variation, language mixing, microphone reliability, and interface simplicity.

These observations support further investigation of a Kazakh-language Windows voice assistant and help refine the initial functional requirements, UX design, and testing strategy.

However, the study does not demonstrate that the proposed application is effective, universally needed, or accessible to specific user groups. Further stakeholder consultations and technical evaluations remain necessary.

## 12. Primary Research Evidence

**[E1]** Qazaq Voice User Needs Assessment. Anonymous Microsoft Forms questionnaire, 20–23 October 2026. Six submitted responses. Original export: `Users_answers.xlsx`.

The original response export is retained separately for verification. The participant identifiers P01–P06 in this document correspond to the response IDs in the export.

## 13. References

**[R1]** Microsoft Support. *Set up voice access*. Microsoft. Accessed October 23, 2026.

https://support.microsoft.com/en-us/accessibility/windows/voice-access/set-up-voice-access

**[R2]** Khassanov, Y., Mussakhojayeva, S., Mirzakhmetov, A., Adiyev, A., Nurpeiissov, M., & Varol, H. A. (2021). *A Crowdsourced Open-Source Kazakh Speech Corpus and Initial Speech Recognition Baseline*. Proceedings of EACL 2021.

https://aclanthology.org/2021.eacl-main.58/

**[R3]** Mussakhojayeva, S., Khassanov, Y., & Varol, H. A. (2022). *KSC2: An Industrial-Scale Open-Source Kazakh Speech Corpus*. Proceedings of Interspeech 2022.

https://www.isca-archive.org/interspeech_2022/mussakhojayeva22_interspeech.html

**[R4]** Mussakhojayeva, S., Dauletbek, K., Yeshpanov, R., & Varol, H. A. (2023). *Multilingual Speech Recognition for Turkic Languages*. Information, 14(2), Article 74.

https://www.mdpi.com/2078-2489/14/2/74