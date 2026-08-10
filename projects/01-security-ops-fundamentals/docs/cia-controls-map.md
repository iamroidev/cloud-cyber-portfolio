# CIA triad → controls map

| CIA goal | Example risk | Control in this project | Type |
|----------|--------------|-------------------------|------|
| Confidentiality | Credential stuffing | Monitor failed logins; prefer key-based auth in hardening notes | Detective / Preventive |
| Integrity | Unauthorized sudo | Query sudo events; alert criteria in playbook | Detective |
| Availability | Account lockout from brute force | Detect spike; response steps to block source | Detective / Corrective |

Frameworks I am applying from coursework: CIA triad, NIST-style risk thinking, and basic security audit habits from Google Cyber Courses 1–2.
