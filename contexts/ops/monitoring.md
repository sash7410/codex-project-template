# Monitoring

This file should describe how to inspect production safely.

Production monitoring is read-only by default. No production database mutation is allowed unless the user creates an explicit incident/remediation ticket and approves the exact action.

## Expected Sections

- Dashboards
- Log locations
- Metrics
- Alarms
- Read-only database checks, if any
- Queue/background job checks
- Incident notes
- Escalation and rollback signals
