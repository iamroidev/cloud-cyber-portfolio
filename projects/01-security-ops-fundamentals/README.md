# Project 01: Security Ops Fundamentals

**Status:** In progress  
**Maps to:** Google Cybersecurity Courses 1–5 (foundations, risk, networks, Linux/SQL, assets/threats/vulns)  
**Focus:** Cloud-ready security operations fundamentals

## Problem

Entry-level cloud and security roles expect more than certificate screenshots. They expect you can inventory assets, rate risk, read logs, and follow a simple response playbook.

## Approach

Build a small, documented security ops case study:

1. Asset inventory for a sample environment
2. Risk register (likelihood × impact)
3. Network / trust-boundary notes
4. Linux-oriented log review
5. SQL queries over authentication events
6. A playbook for a failed-login spike
7. CIA triad mapping of controls used

## Folder layout

```text
01-security-ops-fundamentals/
  README.md
  docs/           # inventory, risk, threat model, CIA map
  linux/          # hardening checklist
  sql/            # analysis queries
  playbooks/      # response steps
  sample-logs/    # safe, synthetic logs
  evidence/       # screenshots / query outputs (add as you go)
```

## Findings (update as you finish)

- [ ] Asset inventory complete
- [ ] Top 5 risks documented
- [ ] SQL queries return analyst-readable results on sample logs
- [ ] Playbook tested against a simulated spike in `auth.log`
- [ ] CIA control map written

## Skills demonstrated

CIA triad · NIST-style risk thinking · asset inventory · threat framing · Linux log hygiene · SQL for security events · incident playbooks

## Related work in this repo

- [Project 02: Botium Toys risk & compliance](../02-botium-toys-risk-assessment/)
- [Project 03: Network traffic incident analysis](../03-network-traffic-incident-analysis/)
