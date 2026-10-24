# KVC-4 — Comparative Analysis of Existing Voice-Control Systems

## 1. Purpose and Scope

This section compares **five existing voice interaction products** with the planned Qazaq Voice system: Microsoft Windows Voice Access, VoiceAttack, Talon Voice, Apple Siri, and Yandex Alice. The objective is to establish which capabilities are already documented and identify a defensible project focus.

**Project scope:** Qazaq Voice is a proposed Windows 11 desktop application that recognizes Kazakh commands, maps them to a restricted set of intents, validates actions, and provides clear execution feedback. The current checkpoint does **not** contain a working neural ASR or Windows executor.

The comparison uses published official product documentation; it does not claim hands-on testing or exhaustive product feature coverage. "Not established" means the cited documentation does not substantiate a capability; it must not be interpreted as a proven absence of that capability.

## 2. Systems Examined

### 2.1 Microsoft Windows Voice Access

Windows Voice Access enables voice-based PC interaction, app control, and dictation on supported Windows 11 versions [R1]. Microsoft's published supported-language list does **not include Kazakh** (accessed 23 October 2026). Microsoft also documents user-defined voice shortcuts [R18]. This makes Voice Access the closest operating-system-level reference for interaction design, but not a verified baseline for Kazakh speech-to-action commands.

### 2.2 VoiceAttack

VoiceAttack is a Windows voice-command application focused on custom commands, app launching, and macros. Its official website documents application launching, keyboard/mouse automation, and customizable commands [R14]. The reviewed public product page does not establish official Kazakh recognition support. Therefore, Kazakh support is recorded as **unverified**, not categorically unsupported.

### 2.3 Talon Voice

Talon targets extensive desktop control and accessibility, with Windows support, scripting, and speech-recognition integration [R15]. The reviewed documentation describes programmable commands and hands-free workflows, but it does not establish an officially supported Kazakh ASR model. Its modularity is relevant to Qazaq Voice's architecture, while its intended workflow and language coverage are not assumed to be identical.

### 2.4 Apple Siri

Siri is Apple's voice assistant for the Apple device ecosystem. Official Apple documentation describes device-specific availability, settings, and functionality [R16]. The cited source does not establish either Windows desktop OS control or Kazakh-language speech recognition. The comparison therefore does not label Siri as a Kazakh Windows-control solution.

### 2.5 Yandex Alice

Yandex states that Alice can communicate in **Kazakh or Russian** in its basic mode [R17]. Consequently, the Qazaq Voice proposal must **not** claim to be the first Kazakh-language voice assistant. The differentiation under investigation is narrower: a measurable Kazakh speech-to-action workflow designed specifically for a controlled set of Windows 11 desktop functions. Support for arbitrary Windows OS actions in Kazakh is not established by the cited Alice FAQ.

## 3. Comparison Criteria

The following ten criteria are applied consistently:

1. Primary device and platform.
2. Documented desktop / OS control.
3. Documented Kazakh-language voice interaction.
4. Ability to define custom actions.
5. Basic application launching / navigation.
6. Evidence of explicit command or permission constraints.
7. Manual or non-speech interaction alternatives.
8. Offline operation described in cited documentation.
9. Accessible or hands-free interaction emphasis.
10. Published Kazakh-to-Windows execution evaluation results.

## 4. Comparative Matrix

| Criterion | Windows Voice Access | VoiceAttack | Talon Voice | Siri | Yandex Alice |
|---|---|---|---|---|---|
| 1. Primary platform | Windows 11 [R1] | Windows PC [R14] | Windows, macOS, Linux [R15] | Apple devices [R16] | Yandex app, browser, and supported devices [R17] |
| 2. Desktop OS control | Documented [R1] | PC app and macro control [R14] | Broad desktop control [R15] | Windows OS control not established | Windows OS control in Kazakh not established |
| 3. Kazakh interaction | Not in published voice-access language list [R1] | Not established by reviewed source | Not established by reviewed source | Not established by reviewed source | **Documented** [R17] |
| 4. Custom commands | Voice shortcuts [R18] | User-defined voice commands [R14] | Scriptable commands [R15] | Not established in reviewed source | Not established in reviewed source |
| 5. App launching / navigation | Documented [R1] | Documented [R14] | Desktop-control workflows [R15] | Apple-oriented assistant functions [R16] | Device/product-dependent; Windows scope unverified [R17] |
| 6. Safety / action constraints | Product-defined command features; detailed policy not evaluated | Powerful macros; safety policy not evaluated | Scriptable; safety policy not evaluated | Platform-dependent; not evaluated | Platform-dependent; not evaluated |
| 7. Non-voice alternatives | Native Windows alternatives exist; product-specific fallback not evaluated | Hardware shortcuts described [R14] | Eye tracking and non-speech input described [R15] | Touch/keyboard interactions on Apple devices | Device-dependent; not evaluated |
| 8. Offline operation | Documented after initial language setup [R1] | Not established in reviewed source | Not established in reviewed source | Not established in reviewed source | Not established in reviewed source |
| 9. Accessibility emphasis | Windows accessibility feature [R1] | Hands-free / productivity orientation [R14] | Explicit accessibility motivation [R15] | Accessibility depends on Apple settings and devices [R16] | Broader assistant; accessibility not evaluated |
| 10. Public Kazakh→Windows benchmark | Not identified in reviewed source | Not identified | Not identified | Not identified | Not identified |

**Interpretation:** A blank or unverified feature is not evidence that the product cannot perform it. These are source-scoped findings, not laboratory measurements or universal claims about every product release.

## 5. Critical Discussion

### 5.1 Closest Functional Reference

Windows Voice Access is the most direct comparison for desktop operating-system commands. Its documented interface demonstrates the relevance of hands-free Windows navigation, command feedback, and language-dependent availability [R1, R18]. Qazaq Voice should not duplicate the entire Windows Voice Access command set; it proposes a smaller, explicitly allowlisted Kazakh command vocabulary.

### 5.2 Customization and Safety

VoiceAttack and Talon demonstrate the value of customizable voice-driven desktop workflows [R14, R15]. However, flexible macros and scripts can enable actions outside Qazaq Voice's proposed safety scope. The project therefore favors **structured intents and validation** over unrestricted conversion of recognized text into shell commands.

### 5.3 Kazakh Support and Novelty

Alice's officially documented Kazakh support [R17] makes language availability alone an inadequate originality claim. The proposed contribution should be evaluated through objective evidence: Kazakh speech recognition accuracy, intent correctness, real Windows command execution, error handling, and latency for a defined seven-intent vocabulary.

The comparison **does not establish** that no current product could be configured to accomplish similar tasks. It identifies a specific implementation and evaluation problem worth investigating.

### 5.4 Accessibility

Voice interfaces may offer hands-free alternatives for some users, but their usability depends on pronunciation, microphones, feedback, input alternatives, and individual needs. Talon's documentation explicitly motivates desktop control for people with limited hand use [R15]. Qazaq Voice's potential accessibility benefits require subsequent user-centered evaluation and must not be presented as already verified.

## 6. Implications for Qazaq Voice

| Observation | Design Implication | Related Document |
|---|---|---|
| Windows voice control is an established interaction category | Focus differentiation on Kazakh command recognition and a reproducible evaluation | KVC-1, KVC-9 |
| Official Voice Access language list excludes Kazakh | Evaluate a Kazakh-capable neural ASR baseline | KVC-5, KVC-6 |
| VoiceAttack and Talon offer powerful customization | Use explicit action allowlists and defined intent schemas | KVC-6, KVC-7 |
| Alice supports Kazakh | Avoid first-of-its-kind language claims | KVC-1, KVC-2 |
| Accessibility and error recovery matter | Provide visual feedback, text input, and robust failure states | KVC-8, KVC-9 |

## 7. Limitations and Next Steps

This desk study uses official websites and documentation as a **preliminary comparison**. It does not include independent installation tests, user observations, measurement of recognition accuracy, systematic license review, or exhaustive verification of product language support.

Future evaluation should confirm current versions and settings, clearly distinguish different product platforms, and test Qazaq Voice using a fixed Kazakh command dataset. No comparative WER, CER, execution success rate, or latency results are claimed here.

## 8. Conclusion

The five products demonstrate existing approaches to voice interaction, desktop control, accessibility, and multilingual assistance. Windows Voice Access is the closest OS-oriented reference, while VoiceAttack and Talon illustrate customizable command workflows. Siri provides a platform-specific general-assistant comparison. Yandex Alice confirms that Kazakh-language voice assistance already exists.

The proposed differentiation for Qazaq Voice is a **Windows 11 Kazakh speech-to-action system with predefined commands, transparent validation, manual fallback, and reproducible evaluation**. This is a design and research objective, not a completed or experimentally verified advantage.

## References

**[R1]** Microsoft Support. *Set up voice access*. Accessed 23 October 2026.  
https://support.microsoft.com/en-us/accessibility/windows/voice-access/set-up-voice-access

**[R14]** VoiceAttack. *Voice Recognition for your Games and Apps*. Official website. Accessed 23 October 2026.  
https://voiceattack.com/

**[R15]** Talon Voice. *Getting Started*. Official documentation. Accessed 23 October 2026.  
https://talonvoice.com/docs/reference/official.html

**[R16]** Apple Support. *Use Siri on all your Apple devices*. Accessed 23 October 2026.  
https://support.apple.com/en-kz/105020

**[R17]** Yandex Alice. *Вопросы и ответы* (Frequently Asked Questions). Official documentation. Accessed 23 October 2026.  
https://alice.yandex.ru/support/ru/assistant/faq.html

**[R18]** Microsoft Support. *Use voice to create voice access shortcuts*. Accessed 23 October 2026.  
https://support.microsoft.com/en-gb/accessibility/windows/voice-access/use-voice-to-create-voice-access-shortcuts

## Related Project Documents

- [KVC-1 — Project Proposal](KVC-01_PROJECT_PROPOSAL.md)
- [KVC-5 — Technology Comparison](KVC-05_TECHNOLOGY_COMPARISON.md)
- [KVC-6 — Requirements Specification](KVC-06_REQUIREMENTS_SPECIFICATION.md)
- [KVC-9 — Verification Plan](KVC-09_VERIFICATION_PLAN.md)
