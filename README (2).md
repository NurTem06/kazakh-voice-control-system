# Development of an Intelligent Voice Control System in the Kazakh Language Based on Neural Networks

**Astana IT University · School of Software Engineering · Group SE-2413**

**Checkpoint target:** 24 October 2026, 18:00 (Astana). **Status: analysis and architecture draft, not a completed application.**

## Problem
Design and evaluate a Kazakh-language voice interface that converts speech into text, identifies a safe limited set of commands, and returns an auditable user-facing action result. Existing general-purpose assistants and ASR engines do not guarantee reliable Kazakh command-domain performance without project-specific validation.

## Intended users / use case
Kazakh-speaking users of a web-based demonstrator; exact application domain and supported commands are **provisional** pending stakeholder/supervisor approval.

## MVP boundaries
- Proposed **in scope**: audio and text input, neural Kazakh ASR, small documented intents, safe browser/UI actions, transcript/result display, objective evaluation.
- Proposed **out of scope**: unrestricted operating-system commands, monetary transactions, smart-home device access, always-on background recording and unsupported languages.

## Team
| Member | Workstream |
|---|---|
| Myrzatay Alan Abayuly | ML/ASR study and research (proposed) |
| Temirgali Nurislam Kairatuly | Backend developer (confirmed) |
| Abdigali Nurassyl Zhandosuly | Frontend and QA (proposed; confirm with supervisor) |

Supervisor: **Turarova Marzhan Kabdikalievna**. Role allocation except backend requires confirmation, and actual contributions must be documented through GitHub/YouTrack.

## Technical architecture (provisional)
Browser UI -> Go Gin REST API -> Python neural ASR adapter -> allow-listed intent/action handler -> browser result. Metadata database only if approved. Technical alternatives are evaluated in the report; none have been benchmarked yet.

## Current status
Documentation draft, source-editable diagrams, test matrix and conceptual HTML UI mockup exist in this package. No trained model, functioning recording service, real stakeholder fieldwork, or benchmark results are claimed.

## Repository structure
- `docs/`: literature, requirements, design, evidence and supervisor log templates, task import and test plans.
- `diagrams/`: Graphviz editable `.dot` sources and `.svg`/`.png` outputs.
- `prototype/`: **conceptual** HTML UI; not a connected neural model.
- `backend/`: reserved for actual backend implementation.
- `tests/`: reserved for actual automated tests; planned test cases in docs.
- `config/`: configuration example only; secrets never committed.

## Prototype view
Open `prototype/index.html` locally in a browser. The example text flow is client-side only. **Microphone / ASR not implemented.**

## Setup, run and test instructions
Documentation and the HTML mockup can be opened without installing dependencies. There is no runnable neural application yet; implementation/test commands will be documented with the first code pull request.

## Project management
- YouTrack: **[ADD REAL YOUTrack URL]**
- Supervisor/committee access: **[CHECK REAL ACCESS]**
- Stage/version: **[SET REAL TAG AFTER FINAL REVIEW]**
- Full checkpoint report: **[ADD LINK TO FINAL SINGLE PDF]**

## Contributing / evidence
Create a genuine YouTrack issue for each meaningful change. Use task-linked feature branches (`<REAL-ID>-short-name`) and reviewed PRs. Individual GitHub identities required. Do not backdate or manufacture work history.

## Privacy and licenses
Never commit credentials, personal voice recordings, private interview notes, or restricted datasets. Validate corpus/model licenses and get consent before collecting voice data.
