# Playbook: Failed login spike

**Trigger:** More than 10 failed authentication events from one source IP in 10 minutes (threshold for this lab).

## 1. Detect

- Run `sql/failed-logins-by-ip.sql` against the sample or live logs.
- Confirm start and end time of the spike.

## 2. Triage

- Is the target account real and privileged?
- Is the source IP internal lab traffic or external?
- Any successful login after the failures?

## 3. Contain

- On a real host: block or rate-limit the source (firewall / security group / fail2ban).
- In this lab: I document what I would block and why.

## 4. Eradicate / recover

- Reset credentials if compromise is suspected.
- Verify sudo and user changes.

## 5. Lessons

- Update risk register (R-001).
- Add redacted evidence under `evidence/`.

## Escalation

If a successful login follows the spike on a real system, I escalate to incident response. This project stops at detection, triage, and a clear playbook. Full IR comes later in the Google Cyber path.
