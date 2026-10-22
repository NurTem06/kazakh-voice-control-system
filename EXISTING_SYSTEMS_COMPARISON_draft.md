# Existing-system comparison (draft, cite official documentation)

Eight consistent criteria: domain, Kazakh readiness, offline behavior, actions/intents, customizability, local/privacy capabilities, maintenance, project suitability.

| System | Domain | Kazakh readiness | Offline | Intent / action | Customizable | Local/privacy | Maintenance | Project fit |
|---|---|---|---|---|---|---|---|---|
| Home Assistant Assist | Smart home | Depends on pipeline; must test | Supported local mode | Home automation | Yes | Local available | Active | Useful architecture but different domain |
| OpenVoiceOS | Modular voice assistant | End-to-end Kazakh not verified | Component-dependent | Skills and plugins | Yes | Self-host | Active | Adaptability with added complexity |
| Rhasspy | Offline bounded commands | No turnkey Kazakh profile confirmed | Yes | HTTP/MQTT/WebSocket intents | Yes | Local/offline | Archived 2025 | Good offline concept, maintenance risk |
| Picovoice Rhino | Bounded speech-to-intent | Kazakh not listed in public docs | On-device | Intent & slots | SDK/context | On-device | Commercial SDK | Restricted language fit |

Sources: https://www.home-assistant.io/voice_control/ ; https://openvoiceos.github.io/beta-technical-manual/ ; https://github.com/rhasspy/rhasspy ; https://picovoice.ai/docs/rhino/ . Statements about Kazakh are not a measured language evaluation.
