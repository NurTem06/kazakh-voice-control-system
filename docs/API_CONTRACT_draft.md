# Draft backend API - design only, not implemented

**POST `/api/v1/commands/audio`** (multipart audio, optional language=`kk`, maximum payload TBD after benchmarking). Response concept:

```json
{
  "request_id": "uuid",
  "transcript": "Көмек көрсет",
  "intent": "SHOW_HELP",
  "confidence": null,
  "action": {"type": "SHOW_HELP", "accepted": true},
  "model": {"name": "TBD", "version": "TBD"},
  "latency_ms": null
}
```

**POST `/api/v1/commands/text`** accepts `{"text":"Көмек көрсет","lang":"kk"}` for test isolation.

**GET `/health`** returns component status (later implementation).

**Errors**: 400 invalid format, 413 audio too large, 422 unsupported codec, 503 model unavailable; examples are proposed, not observed.

**Security**: no arbitrary shell commands, credentials in environment, allow-list for actions. Audio deletion/retention policy to be approved.
