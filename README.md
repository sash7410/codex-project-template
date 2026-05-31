# Codex Project Template

A reusable Markdown coordination template for Codex-driven projects.

Use this template when you want every repo to start with:

- repo-level Codex operating rules
- durable project memory
- an inbox for rough ideas
- a ticket system for subagents
- a handoff area for agent reports
- a lightweight design/decision/wiki workflow

## New Repos

Create a new repository from this GitHub template, then start by writing the project idea into `contexts/inbox.md`.

Recommended first Codex prompt:

```text
Read AGENTS.md and contexts/index.md. Normalize contexts/inbox.md into project overview, plan, and first tickets. Do not write app code yet.
```

## Existing Repos

Use the installer:

```bash
./scripts/install-context-template.sh /path/to/existing/repo
```

The installer is merge-first:

- copies missing files
- skips existing files
- does not overwrite existing `AGENTS.md`, `README.md`, or `contexts/`
- creates required directories

After installing into an existing repo, ask Codex to run an onboarding pass.

## Operating Model

```text
idea -> inbox -> tickets -> subagents -> handoffs -> curated designs/wiki/decisions -> plan update -> repeat
```

The repo Markdown is the source of truth. Tools like Obsidian or Linear can be useful interfaces, but they should not replace the files.
