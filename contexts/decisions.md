# Decisions

Durable decisions for this project. Add entries when a choice should guide future Codex work.

Use this format:

```text
## DEC-000: Title

Date: YYYY-MM-DD
Status: Accepted | Superseded

Decision:

Context:

Consequences:
```

## DEC-001: Use Markdown As Codex Coordination Layer

Date: YYYY-MM-DD
Status: Accepted

Decision:

Use `contexts/` as a living Markdown coordination system for Codex, subagents, tickets, handoffs, project memory, and planning.

Context:

Chat history alone is not a reliable long-term project memory. Plain Markdown remains readable by Codex, GitHub, editors, and optional tools like Obsidian.

Consequences:

- Codex must read `AGENTS.md` and relevant context files before major work.
- Raw notes go into `contexts/inbox.md`.
- Subagents receive focused ticket files and return handoffs.
- Durable knowledge is curated into `contexts/wiki/`.
- Meaningful changes are logged in `contexts/log.md`.
