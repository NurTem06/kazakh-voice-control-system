# KVC-11 — Supervisor Consultation Record

**Project:** Development of an Intelligent Voice Control System in the Kazakh Language Based on Neural Networks  
**Date:** 22 October 2026  
**Supervisor:** Turarova Marzhan Kabdikalievna 
**Record status:** Student summary of a consultation, **pending supervisor verification**.

## Feedback and guidance reported by the team

1. **Product concept.** The proposed product should function as a voice assistant conceptually comparable to Yandex Alice or Apple Siri, while **interacting with the operating system** rather than controlling only the application's own interface.
2. **Kazakh-language focus.** Kazakh-language speech interaction should remain the core distinguishing focus. The team should investigate current alternatives and their support and limitations for Kazakh. **Claims that specific existing assistants do not support Kazakh or perform poorly have not yet been independently verified.**
3. **Usefulness and inclusion.** In addition to everyday convenience, the proposed system may be relevant for older adults and people with disabilities, particularly users who may benefit from alternative interaction methods. This is a **potential use case**, not validated evidence of accessibility or clinical effectiveness.
4. **Future development.** The above directions concern the intended longer-term product; the 24 October checkpoint remains focused on analysis, requirements, architecture, a UX prototype, planning, and evaluation methodology.

## Decisions proposed by the team after the meeting

| Decision | Current position | Verification needed |
|---|---|---|
| Product platform | Windows 11 desktop voice assistant | Confirm Windows target with supervisor |
| Main interaction | Voice command in Kazakh → ASR → intent → allowlisted Windows action → feedback | Confirm minimum supported actions |
| Prototype | Interactive UX demo with simulated results | Supervisor review; not represented as functioning ASR |
| Accessibility | Consider understandable language, large controls, keyboard navigation and clear feedback | Test with representative users before claiming accessibility |
| Comparison | Windows Voice Access, VoiceAttack, Talon Voice, plus general assistants as reference | Verify exact current features and Kazakh support with sources |

## Follow-up actions

- [ ] KVC-1: Align proposal and project scope with Windows OS-level control.
- [ ] KVC-4: Recheck existing-assistant language-support claims and supporting sources.
- [ ] KVC-6: Make Windows command execution and safety requirements testable.
- [ ] KVC-7: Update three architecture diagrams, including the Windows interface and command validation boundary.
- [ ] KVC-8: Provide desktop UX screens and explicit prototype-only scenario demonstration.
- [ ] KVC-9: Define WER/CER, command success, intent accuracy, response latency and safe-failure tests.
- [ ] KVC-11: Send this summary to the supervisor to confirm whether it accurately reflects her guidance.

## Evidence and revision tracking

**Original evidence:** Oral consultation as recounted by the student. No signed supervisor comments, email, or approved decision document attached at the time of writing.  
**Supervisor confirmation:** Accepted. Work is in progress.
**Corrections requested:** To be recorded when received.  
**Team's changes:** Link YouTrack tasks and GitHub Pull Requests/commits once actual updates are made.

*Do not mark KVC-11 “Done” until genuine review evidence and resulting revisions have been documented.*
