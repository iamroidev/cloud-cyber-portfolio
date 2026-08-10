# Linux hardening checklist (lab)

Checklist for a disposable lab host only.

## Access

- [x] Prefer SSH keys over passwords (documented as the target state for this lab)
- [x] Disable root SSH login (target state)
- [x] Limit sudo to named users (target state)
- [x] Set idle session timeout (target state)

## Network

- [x] Host firewall default deny inbound (documented in network diagram)
- [x] Allow only required ports
- [x] Avoid exposing lab SSH to `0.0.0.0/0` if I use cloud

## Logging

- [x] Confirm auth events are available for review (`sample-logs/auth-events.csv`)
- [x] Keep sanitized sample logs in this repo
- [x] Note timezone used in logs (UTC / `Z` timestamps)

## Patch / packages

- [x] Noted as required for any real lab image I stand up later
- [x] Remove unused network services (target state)

## Evidence

Query outputs and notes are under `../evidence/`.
