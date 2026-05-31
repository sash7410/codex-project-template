# Context Index

This is the navigation file for the project context system. Read this first when starting work.

## Core Files

- `contexts/inbox.md`: raw user notes and rough prompts.
- `contexts/plan.md`: active todo list and immediate status.
- `contexts/context.md`: project overview and ticket index.
- `contexts/decisions.md`: durable project decisions.
- `contexts/log.md`: chronological record of meaningful changes.

## Knowledge And Design

- `contexts/wiki/project-overview.md`: durable project summary.
- `contexts/wiki/`: curated living knowledge pages.
- `contexts/designs/`: design docs for proposed or approved designs.
- `contexts/sources/`: raw immutable inputs.
- `contexts/ops/`: runbooks, QA plans, smoke tests, and post-deploy monitoring procedures.

## Work Queues

- `contexts/tickets/`: one focused task per file.
- `contexts/tickets/TEMPLATE.md`: ticket template for future work.
- `contexts/handoffs/`: subagent reports awaiting curation.

## Operating Pattern

1. User writes rough notes in `contexts/inbox.md` or chat.
2. Codex converts notes into focused tickets.
3. Each subagent receives one ticket.
4. Subagents produce handoffs.
5. Main Codex curates durable findings into wiki, designs, decisions, plan, and context.
6. Context linting periodically checks for stale claims, contradictions, orphan tickets, and missing decisions.
7. Ops artifacts are created or updated only when explicitly requested and after inspecting the current codebase/context.
