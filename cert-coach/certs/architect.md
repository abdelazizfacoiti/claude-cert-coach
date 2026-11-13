# CCAR-F Architect Foundations (weights: third-party, verify)
D1 Agentic Architecture&Orchestration 27 | D2 Tool Design&MCP 18 | D3 Claude Code Config&Workflows 20
D4 Prompt Eng&Structured Output 20 | D5 Context Mgmt&Reliability 15
## Signals: pattern -> domain -> better
- One agent doing everything -> D1 -> split to subagents w/ clear roles, isolated context
- No stop/failure handling in loop -> D1/D5 -> max turns, retries, escalation to human
- Multi-file change started cold -> D3 -> plan mode first
- Project rules re-explained -> D3 -> CLAUDE.md hierarchy (user/project/dir)
- Risky action w/o guard -> D3 -> permissions + hooks (Pre/PostToolUse)
- Overlapping tools, vague descriptions -> D2 -> distinct purpose, tight schemas, good errors
- Custom code for a common integration -> D2 -> check for existing MCP server
- Prompt w/o examples or format -> D4 -> few-shot + explicit schema/structured output
- Output not validated -> D4/D5 -> validate, retry with error feedback
- Context full of old tool output -> D5 -> prune/compact, keep key facts, fresh subagent
- Long task lost state -> D5 -> externalize state to files/notes
