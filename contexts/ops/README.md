# Ops

Operational docs and scripts go here.

This folder is intentionally skeletal in the template. Real runbooks and QA scripts must be generated from the current codebase and current context when the user explicitly asks.

## Files

- `runbook.md`: how to run, seed, reset, deploy, rollback, and troubleshoot the app.
- `qa.md`: human-readable QA checklist, edge cases, manual UI flows, and regression coverage.
- `qa.sh`: executable smoke test harness for local/test/staging flows.
- `post-deploy.md`: deployment verification and rollback checks.
- `monitoring.md`: read-only production monitoring and log inspection guidance.

## Rules

- Do not expand these files from guesses.
- Inspect the current codebase and context before writing real procedures.
- `qa.sh` may mutate local/test/staging data only when the environment is explicit.
- Production monitoring is read-only by default.
- If UI participation is required, put human checkpoints in `qa.md`.
- Log QA/post-deploy runs in `contexts/log.md`.
