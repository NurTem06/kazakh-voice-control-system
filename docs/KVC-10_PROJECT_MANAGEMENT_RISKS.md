# KVC-10 — Project Management and Risk Analysis

## 1. Introduction

This document describes the project management approach, team responsibilities, development milestones, task tracking, dependencies, and risk management strategy for **Qazaq Voice**.

**Official project title:** Development of an Intelligent Voice Control System in the Kazakh Language Based on Neural Networks.

**University:** Astana IT University  
**Program:** Software Engineering  
**Group:** SE-2413  
**First checkpoint:** 24 October 2026

The purpose of this document is to ensure that project activities are planned, traceable, and verifiable throughout development.

The project uses GitHub for version control and YouTrack for task management.

The current development stage focuses on research, requirements, architecture, UX prototyping, and evaluation planning. A complete voice-controlled Windows application is not required for the first checkpoint.

## 2. Project Management Approach

The project follows an iterative development approach.

Work is divided into clearly defined tasks, each with a responsible team member, expected deliverables, acceptance criteria, and target completion date.

Project activities are managed using a Kanban board in YouTrack.

GitHub is used to maintain project artifacts and provide a traceable development history.

### 2.1 Management Tools

| Tool | Purpose | Project Link |
|---|---|---|
| GitHub | Version control, documentation, code, branches, commits, pull requests, and reviews | [GitHub Repository](https://github.com/NurTem06/kazakh-voice-control-system) |
| YouTrack | Task planning, assignment, priorities, progress, and deadlines | [YouTrack Project](https://kazakh-voice-control.youtrack.cloud/projects/KVC) |
| Kanban Board | Visual tracking of current work | [Kanban Board](https://kazakh-voice-control.youtrack.cloud/agiles/204-1/current) |
| Microsoft Forms | Preliminary user needs assessment and checkpoint submission | Survey and submission records maintained separately |
| Markdown | Project documentation | `docs/` |
| Mermaid | Editable system architecture diagrams | `diagrams/` |

### 2.2 Task Management Workflow

The planned task workflow is:

**Queue → In Development → In Review → Done**

**Queue:** The task has been created but work has not started.

**In Development:** The responsible contributor is preparing or revising the deliverable.

**In Review:** The deliverable has been prepared and is awaiting verification against its acceptance criteria.

**Done:** The deliverable satisfies its acceptance criteria, and the relevant evidence has been recorded.

Tasks should not be marked as completed solely because a draft file exists.

## 3. Project Team and Responsibilities

### 3.1 Team Members

| Team Member | Role | Planned Responsibilities |
|---|---|---|
| Temirgali Nurislam Kairatuly | Project coordination and system architecture | Project scope, technology comparison, requirements, architecture, project management |
| Myrzatay Alan Abayuly | Research and comparative analysis | User research, literature review, existing-system comparison |
| Abdigali Nurassyl Zhandosuly | UX design and evaluation planning | UX prototype, verification plan, supervisor feedback documentation |

**Supervisor:** Turarova Marzhan Kabdikalievna.

These responsibilities define the planned allocation of work and do not independently establish authorship or completed contributions.

### 3.2 Task Distribution

The 11 checkpoint tasks are distributed across three team members.

| Student | Assigned Tasks | Number |
|---|---|---|
| Temirgali Nurislam | KVC-1, KVC-5, KVC-6, KVC-7, KVC-10 | 5 |
| Myrzatay Alan | KVC-2, KVC-3, KVC-4 | 3 |
| Abdigali Nurassyl | KVC-8, KVC-9, KVC-11 | 3 |
| **Total** | **KVC-1 — KVC-11** | **11** |

### 3.3 Contribution Verification

The project distinguishes between three concepts:

**Task ownership:** The student assigned to coordinate a task.

**Actual contribution:** The work genuinely performed by an individual, such as writing, researching, reviewing, implementing, or testing.

**Verified evidence:** A dated file revision, commit, pull request, review comment, research record, or other supporting artifact.

Task assignment must not be presented as proof that the assigned student authored the deliverable.

Any work initially prepared by another team member must be attributed accurately.

Meaningful later contributions, including source verification, revisions, testing, and peer review, should be recorded under the account of the student who performed them.

## 4. Checkpoint Task Register

The following table summarizes the first checkpoint deliverables.

| Task ID | Task | Planned Owner | Expected Deliverable |
|---|---|---|---|
| KVC-1 | Project Proposal and Scope | Nurislam | Project problem, aims, objectives, users, scope |
| KVC-2 | Evidence of Project Relevance | Alan | User research and evidence analysis |
| KVC-3 | Critical Literature Review | Alan | Review of at least 12 sources and research matrix |
| KVC-4 | Existing Systems Comparison | Alan | Comparison of five existing solutions |
| KVC-5 | Technology Comparison | Nurislam | Alternative technologies and proposed decisions |
| KVC-6 | Requirements Specification | Nurislam | Functional and non-functional requirements |
| KVC-7 | System Architecture and UML Diagrams | Nurislam | System Context, Use Case, Component diagrams |
| KVC-8 | UX Prototype | Nurassyl | Interactive UI mockup, screenshots, documentation |
| KVC-9 | Verification and Evaluation Plan | Nurassyl | Evaluation metrics, baselines, test cases |
| KVC-10 | Project Management and Risks | Nurislam | Task allocation, milestones, dependencies, risks |
| KVC-11 | Supervisor Feedback | Nurassyl | Genuine feedback record and documented responses |

### 4.1 Task Acceptance Criteria

Each task must satisfy the relevant academic requirements before it can be marked Done.

| Task | Main Acceptance Criteria |
|---|---|
| KVC-1 | Problem, target users, objective, scope, and expected outcomes are defined |
| KVC-2 | Actual evidence is documented, and verified observations are distinguished from assumptions |
| KVC-3 | At least 12 meaningfully used sources, including at least 8 scientific publications |
| KVC-4 | Three to five systems compared using consistent criteria and supported claims |
| KVC-5 | At least three technical decisions with two to three alternatives each |
| KVC-6 | Functional and non-functional requirements with priorities and acceptance criteria |
| KVC-7 | Three consistent diagrams with editable sources and readable exports |
| KVC-8 | Demonstrable prototype of major interaction scenarios |
| KVC-9 | Evaluation metrics, measurement conditions, test plan, and baseline |
| KVC-10 | Traceable task management, responsibilities, milestones, and risk register |
| KVC-11 | Actual supervisor feedback and documented decisions or revisions |

## 5. Project Milestones

### 5.1 First Checkpoint Schedule

| Date | Milestone | Expected Outcome |
|---|---|---|
| 22 October 2026 | Project scope refinement | Windows desktop direction incorporated into the project concept |
| 22–23 October 2026 | Research and documentation preparation | Draft checkpoint sections and supporting materials |
| 23 October 2026 | Architecture, UX, and evaluation documentation review | Consistent requirements, diagrams, prototype, and test plan |
| 24 October 2026 | First checkpoint submission | Consolidated report, YouTrack evidence, repository and project links |

**Submission deadline:** 24 October 2026, before 18:00.

These are checkpoint milestones. Completion status must be confirmed using actual project evidence.

### 5.2 Planned Development Stages

After the first checkpoint, the project is expected to continue through the following stages.

| Stage | Planned Activities | Expected Deliverables |
|---|---|---|
| Stage 1 — Research and Design | Problem analysis, requirements, technology comparison, architecture | Checkpoint documentation |
| Stage 2 — ASR Baseline | Evaluate available Kazakh-compatible ASR models | Model comparison and WER/CER results |
| Stage 3 — Desktop Application | Develop the actual Windows desktop UI and microphone integration | Executable application prototype |
| Stage 4 — Intent Recognition | Implement and test supported command classification | Intent recognition module and tests |
| Stage 5 — Windows Integration | Implement allowlisted operating-system actions | Working Windows execution module |
| Stage 6 — Integration Testing | Connect speech recognition, validation, and command execution | End-to-end working prototype |
| Stage 7 — Evaluation | Measure accuracy, latency, reliability, safety, and usability | Experimental results and analysis |
| Stage 8 — Final Documentation | Finalize thesis, demonstrations, and supporting materials | Final diploma deliverables |

**Future stage deadlines:** To be agreed upon with the supervisor.

No specific completion dates are claimed for later development stages until the schedule is approved.

## 6. Project Dependencies

Project tasks are connected through logical dependencies.

### 6.1 Research Dependencies

KVC-2, KVC-3, and KVC-4 provide information needed to validate the project problem and guide technical and functional decisions.

### 6.2 Requirements Dependencies

KVC-1, KVC-2, KVC-4, and KVC-5 inform the software requirements specification in KVC-6.

### 6.3 Architecture Dependencies

KVC-7 depends on KVC-5 and KVC-6.

Architecture components and diagrams must support the approved technologies, user scenarios, and software requirements.

### 6.4 Prototype Dependencies

KVC-8 depends on the functional requirements and planned user interactions.

Its interface should reflect the intended system behavior even though the current prototype simulates voice recognition and operating-system execution.

### 6.5 Evaluation Dependencies

KVC-9 depends on the requirements, architecture, and proposed technology stack.

The evaluation plan must define tests that demonstrate whether the implemented system fulfills mandatory requirements.

### 6.6 Supervisor Review

KVC-11 requires actual supervisor feedback on significant project decisions and prepared deliverables.

Feedback may require revisions to earlier sections.

### 6.7 Dependency Overview

The main development sequence is:

**Problem and User Research → Technology Selection → Requirements → Architecture → Prototype → Implementation → Testing → Evaluation**

Project management and supervisor consultation continue across the entire development lifecycle.

Some documentation tasks may be completed in parallel, provided that the resulting deliverables remain consistent.

## 7. GitHub Repository Management

### 7.1 Repository Structure

The project repository should maintain the following organization.

```text
kazakh-voice-control-system/
├── README.md
├── .gitignore
├── backend/
├── config/
├── diagrams/
├── docs/
├── prototype/
└── tests/
```

**README.md:** Project overview, team, scope, current status, technologies, and links.

**backend/:** Planned implementation of application logic and speech-processing modules.

**config/:** Configuration templates and dependency definitions.

**diagrams/:** Architecture diagram sources and exports.

**docs/:** Research and engineering documentation.

**prototype/:** Interactive UX demonstration and screenshots.

**tests/:** Planned unit, integration, safety, and evaluation tests.

The existence of a directory does not mean that its planned functionality has already been implemented.

### 7.2 Branch Management

The project should use separate branches for meaningful changes.

Example naming convention:

```text
KVC-3-literature-review
KVC-6-requirements
KVC-7-architecture
KVC-8-ux-prototype
KVC-9-verification-plan
```

These names are examples of the intended workflow, not claims that the branches already exist.

### 7.3 Commit Messages

Commit messages should include the YouTrack task identifier.

Examples:

```text
KVC-3: Update literature review and source matrix
KVC-6: Refine functional and non-functional requirements
KVC-7: Add architecture diagrams and Mermaid sources
KVC-8: Improve prototype feedback and error states
KVC-9: Extend verification test matrix
```

Each commit must represent work that was actually performed.

The project must not create artificial commits to suggest contributions that did not occur.

### 7.4 Pull Request Review

For a team project, changes should be submitted through pull requests when practical.

Each pull request should describe:

- The related YouTrack task.
- The changes made.
- The reason for the changes.
- How the changes were checked.
- Any known limitations.

Another team member should review the contribution before merging it into the reviewed baseline.

### 7.5 Repository Access

All project members and the supervisor should have appropriate access.

The committee must be able to inspect the repository during the checkpoint.

A private repository is acceptable only if the necessary access has been granted.

## 8. YouTrack Management

### 8.1 Task Information

Each YouTrack task should contain:

- Task title and ID.
- Responsible team member.
- Task description.
- Priority.
- Target deadline.
- Acceptance criteria.
- Current status.
- Links to relevant project artifacts.

### 8.2 Connecting YouTrack and GitHub

A task should be linked to the actual changes or evidence associated with it.

For example:

**Task:** KVC-7 — System Architecture and UML Diagrams.

**Expected evidence:**

- `docs/KVC-07_ARCHITECTURE.md`
- `diagrams/01-system-context.mmd`
- `diagrams/02-use-cases.mmd`
- `diagrams/03-component-diagram.mmd`
- Corresponding exported diagram images.

The YouTrack task should link to the relevant reviewed commit or pull request when available.

### 8.3 Completion Rules

A task may be marked Done when:

1. The required deliverable exists.
2. Its acceptance criteria have been checked.
3. The actual contributor or contributors are identifiable.
4. Relevant evidence is linked or clearly accessible.
5. Outstanding limitations are documented.
6. Required review has been performed.

Documentation should not claim that software functions have been implemented when only mockups or design plans exist.

## 9. Risk Management

Risk management is used to identify possible threats to the project's schedule, quality, safety, and successful implementation.

The risk register uses qualitative probability and impact categories.

**Probability:** Low, Medium, High.

**Impact:** Low, Medium, High, Critical.

These ratings represent preliminary project-management judgments rather than statistically measured probabilities.

### 9.1 Risk Register

| ID | Risk | Probability | Impact | Mitigation Strategy | Proposed Owner |
|---|---|---|---|---|---|
| RK-01 | Low accuracy of Kazakh speech recognition | High | High | Benchmark alternative ASR models; evaluate varied pronunciation and noise conditions | Nurislam |
| RK-02 | Insufficient command-oriented speech data | High | High | Prepare a dedicated command evaluation set with consent and documented splits | Alan |
| RK-03 | Limited computing resources | Medium | High | Evaluate smaller models, measure CPU performance, and consider lightweight inference | Nurislam |
| RK-04 | Unsafe or unintended Windows actions | Medium | Critical | Fixed command allowlist, strict parameter validation, no unrestricted shell execution | Nurislam |
| RK-05 | Incorrect handling of regional pronunciation or code-switching | High | Medium | Include linguistic variation in evaluation and document observed limitations | Alan |
| RK-06 | UI is difficult to use or inaccessible | Medium | High | Preserve mouse/keyboard controls, improve feedback, conduct later usability testing | Nurassyl |
| RK-07 | Delays caused by the checkpoint schedule | High | High | Prioritize mandatory deliverables and monitor task completion daily | Entire Team |
| RK-08 | Uneven team workload or unclear contributions | High | High | Record actual work, assign meaningful review activities, and maintain traceable evidence | Entire Team |
| RK-09 | Incomplete or unavailable source evidence | Medium | High | Verify references, maintain the literature matrix, and distinguish evidence from assumptions | Alan |
| RK-10 | Failure to integrate ASR with Windows components | Medium | High | Use modular interfaces and progressive component-level integration | Nurislam |
| RK-11 | Supervisor feedback is not documented | Medium | High | Maintain consultation records and confirm decisions and required corrections | Nurassyl |
| RK-12 | Loss of project files or repository history | Low | Critical | Use version control, appropriate access permissions, and secure backups | Entire Team |

### 9.2 Highest-Priority Risks

**Unsafe Windows command execution (RK-04)** requires particular attention because incorrect interpretation of a voice command could lead to an unintended operating-system action.

The proposed mitigation is to isolate language recognition from command execution and enforce a predefined allowlist.

**Low Kazakh ASR accuracy (RK-01)** could reduce the overall usefulness of the assistant. The project must therefore compare appropriate ASR checkpoints under realistic command conditions rather than rely only on published model performance.

**Uneven team contribution (RK-08)** may affect project traceability and checkpoint evaluation. The team should document actual authorship and genuine peer review rather than assume that assigning tasks proves participation.

### 9.3 Risk Review Procedure

The risk register should be reviewed when:

- A milestone is missed.
- A technical approach changes.
- A major dependency becomes unavailable.
- Testing reveals unexpected errors.
- The supervisor requests a significant revision.
- Project scope or available resources change.

New risks should be added when identified, and outdated assessments should be revised.

## 10. Quality Assurance and Review

Project deliverables must be checked for accuracy, internal consistency, and traceability.

### 10.1 Documentation Quality

Each major Markdown document should:

- Have a clear title and purpose.
- Use consistent project terminology.
- Include supporting references where external claims are made.
- Distinguish proposed features from implemented functions.
- Provide links to related project artifacts.
- Avoid unsupported performance claims.

### 10.2 Requirements Consistency

The same command identifiers should be used across KVC-6, KVC-7, KVC-8, and KVC-9.

For example:

`volume_up` and `volume_down`

These identifiers should not be replaced by inconsistent variants in different components without documentation.

### 10.3 Prototype Quality

The UX prototype must be described as a simulation until real speech recognition and Windows execution are integrated.

Success and error screenshots demonstrate interface behavior, not actual operating-system control.

### 10.4 Architecture Quality

The architecture diagrams must correspond to the functional requirements and describe consistent system boundaries.

Editable diagram sources and readable exports should both be preserved.

### 10.5 Research Quality

The literature review and comparative analyses must use reliable sources.

The original questionnaire results should be retained as separate primary evidence.

Questionnaire responses must not be represented as independently verified interviews unless those interviews were actually conducted.

## 11. Current Checkpoint Progress

The following status summarizes the currently prepared materials.

| Area | Current Preparation | Remaining Verification |
|---|---|---|
| Project proposal | Documentation prepared | Final scope and supervisor review |
| User needs assessment | Six anonymous questionnaire responses analyzed | Additional consultation evidence if required |
| Literature review | Twelve scientific publications documented | Final bibliographic consistency |
| Existing-system comparison | Five systems compared | Final confirmation of source claims |
| Technology comparison | Alternatives and preliminary decisions documented | Final stack approval |
| Requirements | Functional and non-functional specifications prepared | Supervisor approval and later validation |
| Architecture | Description and three diagram types prepared | Final diagram consistency and exports |
| UX prototype | Interactive HTML simulation and screenshots prepared | Final demonstration review |
| Evaluation plan | Metrics and test cases documented | Actual testing in later development |
| Project management | Task distribution and risk register prepared | Git/YouTrack traceability verification |
| Supervisor feedback | Consultation summary prepared | Confirmation of feedback and resulting revisions |

**Important distinction:** Prepared documentation does not automatically mean that all related tasks satisfy their acceptance criteria.

The Git history, reviewer comments, task evidence, and actual participant contributions must be checked independently.

## 12. First Checkpoint Submission Requirements

The first checkpoint package should contain:

1. A complete project repository with an informative README.
2. Documentation for all eleven required checkpoint components.
3. Editable architecture diagram sources and exported diagrams.
4. UX prototype materials.
5. Relevant YouTrack tasks with responsibilities, priorities, and deadlines.
6. Traceable evidence of genuine team contributions.
7. A consolidated PDF report covering the required components.
8. A separate PDF containing actual YouTrack board and issue screenshots.
9. Appropriate repository and project access for the supervisor and committee.
10. A project version tag, `pre-defense-1`, identifying the exact submitted repository state.

The tag must be created from the actual reviewed submission version.

The report and screenshots must accurately reflect the state of the project at submission time.

## 13. Outstanding Management Actions

Before the checkpoint is submitted, the team should verify:

- All required Markdown documents and supporting materials are accessible.
- Updated Mermaid diagram sources and exports are included.
- The README describes the actual project state.
- YouTrack assignments and acceptance criteria are complete.
- Each student has a traceable record of genuine contributions.
- Source verification and review evidence are available.
- The supervisor's feedback is recorded accurately.
- Final board and issue screenshots reflect the current YouTrack state.
- GitHub and YouTrack permissions allow committee review.
- The final submission files have been checked.
- The submitted repository version is tagged correctly.

Items that are not completed must be reported as outstanding work rather than marked Done without evidence.

## 14. Conclusion

The Qazaq Voice project is managed using GitHub and YouTrack to provide structured task planning, version control, and traceable development activities.

The first checkpoint consists of eleven tasks distributed across three team members.

Project milestones and dependencies establish a development path from initial research and requirements through architecture, implementation, verification, and final evaluation.

The risk register identifies technical, security, research, usability, organizational, and schedule-related risks.

Particular attention is given to Kazakh speech recognition quality, safe Windows execution, and accurate documentation of individual contributions.

The current management framework establishes the basis for continued development and future checkpoint reviews.

Final task completion and individual contributions must be supported by actual repository history, review records, and project evidence.

## Related Project Materials

**GitHub Repository:** https://github.com/NurTem06/kazakh-voice-control-system

**YouTrack Project:** https://kazakh-voice-control.youtrack.cloud/projects/KVC

**Kanban Board:** https://kazakh-voice-control.youtrack.cloud/agiles/204-1/current

**Contribution Log:** [TEAM_CONTRIBUTION_LOG_TEMPLATE.md](TEAM_CONTRIBUTION_LOG_TEMPLATE.md)

**Project Proposal:** [KVC-01_PROJECT_PROPOSAL.md](KVC-01_PROJECT_PROPOSAL.md)

**Requirements:** [KVC-06_REQUIREMENTS_SPECIFICATION.md](KVC-06_REQUIREMENTS_SPECIFICATION.md)

**Architecture:** [KVC-07_ARCHITECTURE.md](KVC-07_ARCHITECTURE.md)

**Verification Plan:** [KVC-09_VERIFICATION_PLAN.md](KVC-09_VERIFICATION_PLAN.md)

**Supervisor Feedback:** [KVC-11_SUPERVISOR_FEEDBACK.md](KVC-11_SUPERVISOR_FEEDBACK.md)