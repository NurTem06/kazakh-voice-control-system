# Technology choices (PROVISIONAL)

| Technical decision | Alternative A | Alternative B | Alternative C | Planned decision and evidence required |
|---|---|---|---|---|
| ASR | Whisper multilingual | Vosk offline Kazakh | XLS-R adapted | Benchmark Whisper and Vosk first; assess XLS-R fine-tuning practicality; measure WER, CER, intent success and latency |
| Backend | Go Gin | Python FastAPI | Node Express | Go Gin for client API + separate Python ML adapter is provisionally selected, requires integration proof |
| Storage | PostgreSQL | SQLite | MongoDB | PostgreSQL only for justified metadata; no raw audio stored by default |
| Communication | REST/JSON | WebSocket | gRPC | REST/JSON for short requests first; benchmark streaming only if stakeholder needs it |

Decisions are NOT measured results or supervisor approvals. Review licenses, security and available hardware before final selection.
