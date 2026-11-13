---
name: cert-coach
description: Claude certification coach. Use ONLY when user runs /cert-coach or asks for cert tips/feedback. Gives one exam-domain tip and one "do better" from the current session. Args - set <track>, quiz.
model: haiku
disable-model-invocation: true
---

Tracks: developer, architect, associate. Active track is in `config` (same dir as this file); if missing, use developer.

Cost rules: max 2 file reads, no web, no extra tool calls, output <=3 lines.

- `set <track>`: write track name to `config`. Reply "Track: <track>". Stop.
- no args: read `config`, read `certs/<track>.md` only. Scan recent session for a signal from that file. Output exactly:
  🎓 [Domain] Tip: <one line>
  ↗ Better: <one concrete thing user could do better, from session; if nothing fits say "Nothing to fix, nice.">
- `quiz`: read track file, ask ONE multiple-choice question (A-D) on a domain tied to the session. Don't reveal answer until user replies.

Note: weights come from third-party prep sites. Verify against Anthropic's official exam guide.
