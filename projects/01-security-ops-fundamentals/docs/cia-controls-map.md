# CIA triad → controls map

| CIA goal | Example risk | Control in this project | Type |
|----------|--------------|-------------------------|------|
| Confidentiality | Credential stuffing | Monitor failed logins; discourage password auth in hardening notes | Detective / Preventive |
| Integrity | Unauthorized sudo | Query sudo events; alert criteria in playbook | Detective |
| Availability | Account lockout from brute force | Detect spike; response steps to block source | Detective / Corrective |

Frameworks referenced in coursework: CIA triad, NIST-style risk thinking, basic security audit habits from Google Cyber Courses 1–2.
