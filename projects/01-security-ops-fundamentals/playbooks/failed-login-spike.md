# Playbook: Failed login spike

**Trigger:** More than 10 failed authentication events from one source IP in 10 minutes (adjust for your lab).

## 1. Detect

- Run `sql/failed-logins-by-ip.sql` (or equivalent) against the sample / live logs.
- Confirm start and end time of the spike.

## 2. Triage

- Is the target account real and privileged?
- Is the source IP internal lab traffic or external?
- Any successful login after the failures?

## 3. Contain

- Block or rate-limit the source (firewall / security group / fail2ban) on a real host.
- For this lab: document what you *would* block and why.

## 4. Eradicate / recover

- Reset credentials if compromise is suspected.
- Verify sudo and user changes.

## 5. Lessons

- Update risk register (R-001).
- Add evidence screenshots (redacted) under `evidence/`.

## Escalation

If a successful login follows the spike on a real system, escalate to incident response (Course 6+ territory). Do not pretend you ran a full IR here.
