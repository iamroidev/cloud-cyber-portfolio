# Linux hardening checklist (lab)

Use on a disposable lab host only.

## Access

- [ ] Prefer SSH keys over passwords
- [ ] Disable root SSH login
- [ ] Limit sudo to named users
- [ ] Set idle session timeout

## Network

- [ ] Host firewall default deny inbound
- [ ] Allow only required ports
- [ ] Do not expose lab SSH to `0.0.0.0/0` if using cloud

## Logging

- [ ] Confirm `auth.log` / `secure` is writing
- [ ] Copy sample logs into this repo (sanitized)
- [ ] Note timezone used in logs

## Patch / packages

- [ ] Apply updates on lab image
- [ ] Remove unused network services

## Evidence

Save command output (redacted) under `../evidence/` when you complete items.
