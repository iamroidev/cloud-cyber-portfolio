# Threat model (lab-web-01)

## Scope

Single lab host used to practice authentication log review. No real customer data.

## What we care about (CIA)

| Goal | Meaning here |
|------|----------------|
| Confidentiality | Protect account credentials and session details in logs |
| Integrity | Detect unauthorized sudo / account changes |
| Availability | Notice lockouts or brute-force that could deny admin access |

## Likely attackers (lab context)

1. Opportunistic internet scanner (if host were exposed)
2. Local user with a stolen password
3. Insider/student mistake (over-permissioned account)

## Entry points

- SSH / login service
- Local console
- Stolen credentials

## Mitigations practiced in this project

- Inventory + risk register
- Log review with SQL
- Failed-login playbook
- Linux hardening checklist

## Out of scope (for now)

Full SIEM, malware analysis, red-team tooling.
