# Risk register

Likelihood and impact are scored from 1 (low) to 5 (high). Score = L × I.

| Risk ID | Asset | Threat / scenario | Vulnerability | L | I | Score | Control I plan | Status |
|---------|-------|-------------------|---------------|---|---|-------|----------------|--------|
| R-001 | A-001 | Brute-force SSH / login | Weak or reused passwords; open admin port | 4 | 4 | 16 | MFA, fail2ban/rate limit, key-only SSH | Detected in sample (playbook applied) |
| R-002 | A-001 | Unauthorized privilege use | Unmonitored sudo | 3 | 5 | 15 | Log sudo; alert on new sudoers | Open |
| R-003 | A-002 | Log tampering / loss | Logs only on disk, no integrity check | 2 | 4 | 8 | Centralize logs; hash/archive copies | Open |
| R-004 | A-001 | Accidental exposure of lab host | Misconfigured public bind | 3 | 3 | 9 | Bind to localhost; firewall rules | Open |
| R-005 | Analyst WS | Credential leak in screenshots | Pasting secrets into evidence | 2 | 5 | 10 | Redaction checklist before commit | Open |

## Notes

These scores are for this learning project. I will revisit them after I run the SQL queries on the sample logs. When I close a risk, I will link it to a playbook step or hardening item.
