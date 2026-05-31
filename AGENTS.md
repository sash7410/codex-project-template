# Codex Project Operating Rules

This repo uses a Markdown coordination system for all AI/Codex work.

## Required Startup Flow

Before making implementation changes, Codex must read:

1. `contexts/index.md`
2. `contexts/plan.md`
3. `contexts/context.md`
4. Any ticket named by the user or selected from `contexts/tickets/`
5. Relevant wiki/design/decision files

If the user asks for planning, architecture, tickets, research, or subagents, stay in the context system and do not edit app code unless implementation is explicitly approved.

## Context System

- `contexts/inbox.md`: raw user notes and rough prompts.
- `contexts/index.md`: catalog of project context files.
- `contexts/log.md`: chronological record of meaningful project/context changes.
- `contexts/decisions.md`: durable decisions only.
- `contexts/plan.md`: active todo list and immediate status.
- `contexts/context.md`: project overview and ticket index.
- `contexts/designs/`: approved or proposed design docs.
- `contexts/sources/`: immutable/raw source inputs.
- `contexts/wiki/`: curated living knowledge.
- `contexts/tickets/`: one ticket per focused task or subagent.
- `contexts/handoffs/`: subagent outputs before curation.

## Subagent Rules

- Give each subagent exactly one ticket or clearly bounded task.
- Subagents should write handoffs, not permanent truth.
- Main Codex curates handoffs into `contexts/wiki/`, `contexts/designs/`, `contexts/decisions.md`, `contexts/plan.md`, and `contexts/context.md`.
- Parallel subagents must have disjoint write scopes.
- Coding tickets must include owned files/modules and do-not-touch boundaries.

## Memory Rules

- Treat `contexts/wiki/` as living memory, not polished public docs.
- Update `contexts/index.md` when adding, moving, or retiring context files.
- Update `contexts/log.md` when meaningful context, ticket, design, or architecture changes happen.
- Put stable decisions in `contexts/decisions.md`, not only in chat.
- Preserve raw source material under `contexts/sources/`; summarize into wiki pages instead of editing sources.
- Run periodic context linting: stale claims, contradictions, orphan tickets, missing decisions, and unmerged handoffs.

## Implementation Gate

For non-trivial implementation:

1. Convert raw notes into a ticket.
2. Confirm objective, scope, out-of-scope, write scope, and acceptance criteria.
3. Update `contexts/plan.md`.
4. Implement.
5. Verify.
6. Update context/log/decisions if anything durable changed.

Do not bypass this flow for large architecture, data model, infrastructure, or subagent-driven changes.
