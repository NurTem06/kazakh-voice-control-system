# Project Proposal and Scope

## 1. General Information

**Project Title:** Development of an Intelligent Voice Control System in the Kazakh Language Based on Neural Networks

**Project Name:** Kazakh Voice Control System

**University:** Astana IT University

**Educational Program:** Software Engineering

**Group:** SE-2413

**Team Members:**
- Temirgali Nurislam
- Myrzatay Alan
- Abdigali Nurassyl

**Scientific Supervisor:** Turarova Marzhan Kabdikalievna

**Project Type:** Windows Desktop Application

**Target Platform:** Windows 11 (64-bit)

## 2. Problem Statement

Voice assistants such as Apple Siri, Google Assistant, and Amazon Alexa demonstrate how speech-based interaction can simplify the use of digital devices.

However, developing reliable voice control for the Kazakh language presents challenges related to speech recognition accuracy, pronunciation variation, background noise, and the availability of suitable language resources.

The project addresses these challenges by proposing a neural network-based voice assistant designed specifically for controlling selected Windows functions through spoken Kazakh commands.

The system will allow users to perform common computer operations without relying exclusively on a keyboard or mouse.

The project will focus on combining Kazakh automatic speech recognition, intent identification, and secure execution of supported Windows commands.

## 3. Target Users

The primary target users include:

- Kazakh-speaking Windows users.
- Students and professionals who regularly use computers.
- Users who prefer voice-based interaction for common desktop operations.
- Users who may benefit from an alternative to keyboard and mouse interaction.

These target groups are preliminary and will be validated through user discussions.

## 4. Project Aim

To design, develop, and evaluate an intelligent Windows desktop voice assistant capable of recognizing spoken Kazakh commands, interpreting user intentions, and executing supported operating system actions using neural network-based speech recognition.

## 5. Project Objectives

1. Analyze existing voice assistants and Kazakh speech recognition technologies.
2. Investigate suitable neural network models, including Whisper and XLS-R.
3. Define functional and non-functional requirements for a Windows desktop assistant.
4. Design a modular software architecture.
5. Develop a user-friendly desktop interface.
6. Implement microphone-based voice input and audio preprocessing.
7. Integrate a neural network-based Kazakh speech recognition model.
8. Develop an intent recognition module for identifying user commands.
9. Implement a secure command execution module for supported Windows operations.
10. Evaluate speech recognition accuracy, command execution reliability, and response latency.

## 6. Proposed System Functionality

The initial prototype will support a limited set of Kazakh voice commands.

| Kazakh Voice Command | English Translation | Expected Windows Action |
|---|---|---|
| Браузерді аш | Open the browser | Launch the default browser |
| Калькуляторды аш | Open the calculator | Launch Windows Calculator |
| Блокнотты аш | Open Notepad | Launch Windows Notepad |
| Дыбысты көтер | Increase the volume | Increase system volume |
| Дыбысты азайт | Decrease the volume | Decrease system volume |
| Уақытты көрсет | Show the time | Display the current system time |
| Google-дан ізде | Search on Google | Open a browser search using the supplied query |

The commands represent the planned initial functionality and may be refined after supervisor review and user feedback.

## 7. Proposed System Architecture

The system will use a modular architecture consisting of the following components:

**1. Desktop User Interface**

Allows users to start and stop voice recording, view recognized text, and receive feedback about executed commands.

**2. Audio Input and Preprocessing**

Captures microphone audio and prepares it for neural network inference.

**3. Neural Speech Recognition Module**

Uses a pretrained or fine-tuned neural network model to convert Kazakh speech into text.

**4. Intent Recognition Module**

Analyzes recognized text and maps supported phrases to predefined command intentions.

**5. Local Backend and Command Execution Module**

Validates recognized intentions and executes approved Windows actions through controlled system interfaces.

**6. Feedback and Error Handling Module**

Displays successful operations, unsupported commands, and recognition errors.

**Main processing flow:**

User Speech → Audio Processing → Neural ASR → Intent Recognition → Command Validation → Windows Action → User Feedback

## 8. Proposed Technologies

| Component | Candidate Technologies |
|---|---|
| Desktop Interface | Python PySide6 |
| Speech Recognition | Whisper, XLS-R, NVIDIA NeMo |
| Backend / Application Logic | Python, potentially Go |
| Intent Recognition | Rule-based matching or ML classification |
| Windows Integration | Windows APIs and controlled system calls |
| Testing | Pytest, WER, CER, command execution tests |
| Version Control | GitHub |
| Project Management | YouTrack |

The final technology selection will be justified through a comparative technical analysis.

## 9. Project Scope

### In Scope

- Development of a Windows desktop application.
- Capturing voice commands through a microphone.
- Recognition of Kazakh speech using neural networks.
- Converting speech into text.
- Identifying supported user intentions.
- Executing selected Windows commands.
- Providing visual feedback and error messages.
- Testing system accuracy, reliability, and performance.

### Out of Scope for the Initial Prototype

- Full operating system control.
- Unrestricted command-line or PowerShell execution.
- Installation and removal of software through voice commands.
- Deletion of arbitrary user files.
- Banking or financial operations.
- Continuous background listening.
- Smart home device control.
- Full multilingual voice assistant functionality.

## 10. Expected Outcomes

The project is expected to deliver:

1. A documented Windows voice assistant architecture.
2. A desktop user interface.
3. An integrated neural network-based Kazakh speech recognition module.
4. A command interpretation and execution subsystem.
5. A functional prototype supporting selected Windows operations.
6. A test suite for supported commands and error conditions.
7. Evaluation results for ASR accuracy, intent recognition, execution success, and response latency.
8. Technical documentation and a structured GitHub repository.

## 11. Current Development Status

At the first checkpoint, the project focuses on requirements analysis, literature review, technology comparison, architecture design, project planning, and initial prototyping.

The GitHub repository and YouTrack project have been created.

An initial interface concept and architecture documentation have been prepared for review.

The complete Windows desktop assistant has not yet been implemented. Neural model integration, operating system interaction, and experimental evaluation are planned for subsequent development stages.

## 12. Conclusion

The Kazakh Voice Control System aims to provide an intelligent and accessible method of interacting with Windows through spoken Kazakh commands.

The project combines neural speech recognition, natural language command interpretation, desktop application development, and secure operating system integration.

Its initial implementation will focus on a limited, testable set of Windows operations, establishing a foundation for future extensions and improvements.
