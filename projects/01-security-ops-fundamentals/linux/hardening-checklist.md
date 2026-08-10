# Linux hardening checklist (lab)

Checklist for a disposable lab host only.

## Access

- [ ] Prefer SSH keys over passwords
- [ ] Disable root SSH login
- [ ] Limit sudo to named users
- [ ] Set idle session timeout

## Network

- [ ] Host firewall default deny inbound
- [ ] Allow only required ports
- [ ] Avoid exposing lab SSH to `0.0.0.0/0` if I use cloud

## Logging

- [ ] Confirm `auth.log` / `secure` is writing
- [ ] Keep sanitized sample logs in this repo
- [ ] Note timezone used in logs

## Patch / packages

- [ ] Apply updates on the lab image
- [ ] Remove unused network services

## Evidence

I will save redacted command output under `../evidence/` as I complete items.
