# Project 01: Security Ops Fundamentals

**Status:** In progress  
**Maps to:** Google Cybersecurity Courses 1–5 (foundations, risk, networks, Linux/SQL, assets/threats/vulns)  
**Focus:** Cloud-ready security operations fundamentals

## Problem

Certificate screenshots alone do not show I can inventory assets, rate risk, read logs, and follow a simple response playbook. I needed a small project that proves those skills.

## Approach

I am building a documented security ops case study with:

1. Asset inventory for a sample environment
2. Risk register (likelihood × impact)
3. Network / trust-boundary notes
4. Linux-oriented log review
5. SQL queries over authentication events
6. A playbook for a failed-login spike
7. CIA triad mapping of the controls I use

## Folder layout

```text
01-security-ops-fundamentals/
  README.md
  docs/           # inventory, risk, threat model, CIA map
  linux/          # hardening checklist
  sql/            # analysis queries
  playbooks/      # response steps
  sample-logs/    # synthetic logs I wrote for practice
  evidence/       # screenshots / query outputs
```

## Progress

- [ ] Asset inventory complete
- [ ] Top 5 risks documented
- [ ] SQL queries return clear results on sample logs
- [ ] Playbook checked against a simulated spike in auth events
- [ ] CIA control map written

## Skills

CIA triad · NIST-style risk thinking · asset inventory · threat framing · Linux log hygiene · SQL for security events · incident playbooks

## Related work in this repo

- [Project 02: Botium Toys risk & compliance](../02-botium-toys-risk-assessment/)
- [Project 03: Network traffic incident analysis](../03-network-traffic-incident-analysis/)
