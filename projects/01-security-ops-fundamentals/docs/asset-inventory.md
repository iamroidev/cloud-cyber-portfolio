# Asset inventory (sample environment)

Environment: synthetic student lab host I use for log analysis (not production).

| Asset ID | Name | Type | Owner | Data sensitivity | Exposure | Notes |
|----------|------|------|-------|------------------|----------|-------|
| A-001 | lab-web-01 | Ubuntu VM / container | Me | Low (synthetic) | Lab-only | Generates auth and web logs |
| A-002 | auth.log | System log | Me | Medium (credential events) | Local file | Source for SQL / log review |
| A-003 | Analyst workstation | Windows laptop | Me | Low | Local | Where I run queries and write reports |

I will extend this table when I bring AWS resources into the project (EC2, security groups, IAM).
