# Project 01: Security Ops Fundamentals

**Status:** Complete (v1)  
**Maps to:** Google Cybersecurity Courses 1–5 (foundations, risk, networks, Linux/SQL, assets/threats/vulns)  
**Focus:** Cloud-ready security operations fundamentals

## Problem

Certificate screenshots alone do not show I can inventory assets, rate risk, read logs, and follow a simple response playbook. I needed a small project that proves those skills end to end.

## Approach

I built a documented security ops case study with:

1. Asset inventory for a sample environment
2. Risk register (likelihood × impact)
3. Network / trust-boundary notes
4. Linux-oriented hardening checklist
5. SQL queries over authentication events
6. A playbook for a failed-login spike
7. CIA triad mapping of the controls I used

## Folder layout

```text
01-security-ops-fundamentals/
  README.md
  docs/           # inventory, risk, threat model, CIA map, network diagram
  linux/          # hardening checklist
  sql/            # analysis queries
  playbooks/      # response steps
  sample-logs/    # synthetic logs I wrote for practice
  evidence/       # query outputs
```

## Findings

1. **Brute-force pattern:** `203.0.113.10` produced **12 failed SSH attempts** against `admin`/`root` between `08:01:11Z` and `08:03:27Z`. That trips my playbook threshold.
2. **No successful breach in the sample:** successful SSH and sudo events only came from `198.51.100.20` (`richard`). The noisy IP never authenticated successfully.
3. **Secondary noise:** `203.0.113.44` had 2 failed `guest` attempts. I treat that as low priority versus the spike.
4. **Controls mapping:** detective controls (SQL over auth events + playbook) support confidentiality and integrity; containment steps support availability if lockouts start.

Evidence: [`evidence/failed-logins-query.txt`](evidence/failed-logins-query.txt), [`evidence/successful-auth-query.txt`](evidence/successful-auth-query.txt).

## Progress

- [x] Asset inventory complete
- [x] Top risks documented in the risk register
- [x] SQL queries return clear results on sample logs
- [x] Playbook checked against the simulated spike
- [x] CIA control map written
- [x] Network / trust-boundary notes added

## How I ran the analysis

From this project folder:

```bash
python -c "import csv,sqlite3; ..."
# or sqlite3 + .import as documented in sql/README.md
```

See [`sql/README.md`](sql/README.md).

## Skills

CIA triad · NIST-style risk thinking · asset inventory · threat framing · Linux log hygiene · SQL for security events · incident playbooks

## Related work in this repo

- [Project 02: Botium Toys risk & compliance](../02-botium-toys-risk-assessment/)
- [Project 03: Network traffic incident analysis](../03-network-traffic-incident-analysis/)
