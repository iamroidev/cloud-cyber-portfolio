# Risk register (starter)

Rate **Likelihood** and **Impact** from 1 (low) to 5 (high). **Score** = L × I.

| Risk ID | Asset | Threat / scenario | Vulnerability | L | I | Score | Suggested control | Status |
|---------|-------|-------------------|---------------|---|---|-------|-------------------|--------|
| R-001 | A-001 | Brute-force SSH / login | Weak or reused passwords; open admin port | 4 | 4 | 16 | MFA, fail2ban/rate limit, key-only SSH | Open |
| R-002 | A-001 | Unauthorized privilege use | Unmonitored sudo | 3 | 5 | 15 | Log sudo; alert on new sudoers | Open |
| R-003 | A-002 | Log tampering / loss | Logs only on disk, no integrity check | 2 | 4 | 8 | Centralize logs; hash/archive copies | Open |
| R-004 | A-001 | Accidental exposure of lab host | Misconfigured public bind | 3 | 3 | 9 | Bind to localhost; firewall rules | Open |
| R-005 | Analyst WS | Credential leak in screenshots | Pasting secrets into evidence | 2 | 5 | 10 | Redaction checklist before commit | Open |

## Notes

- Scores are for learning. Revisit after you run the SQL queries on sample logs.
- Tie each accepted risk to a playbook or hardening item when you close it.
