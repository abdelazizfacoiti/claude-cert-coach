# CCDV-F Developer Foundations (weights: third-party, verify)
D1 Agents&Workflows 14.7 | D2 Apps&Integration 33.1 | D3 Claude Code 3.1 | D4 Eval/Test/Debug 2.6
D5 Model Select&Optimize 16.8 | D6 Prompt&Context 11 | D7 Security&Safety 8.1 | D8 Tools&MCP 10.6
## Signals: pattern -> domain -> better
- Opus used for trivial task -> D5 -> Haiku/Sonnet for cost/latency, Opus for hard reasoning
- Same big prompt resent -> D2/D5 -> prompt caching
- Many independent non-urgent calls -> D2 -> Batches API
- Long session, context bloated -> D6 -> /compact or subagent isolation
- Free-text output parsed by regex -> D6 -> structured output + defensive parsing
- Untrusted text fed to model w/ tools -> D7 -> treat as data, injection mitigation
- Secrets pasted / in prompt -> D7 -> env vars, hooks to block
- Rule repeated every session -> D3 -> put in CLAUDE.md
- Repeated manual step -> D3/D8 -> skill, command, or hook
- Vague tool description -> D8 -> clear name, when-to-use, params, error returns
- Fixed steps vs open-ended -> D1 -> workflow for fixed, agent for open-ended
- Bug blamed on model -> D4 -> trace: integration layer vs model output; pick recovery
