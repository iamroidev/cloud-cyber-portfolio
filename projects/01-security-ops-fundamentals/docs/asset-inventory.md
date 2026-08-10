# Asset inventory (sample environment)

Environment: synthetic "student lab" host used for log analysis (not a production system).

| Asset ID | Name | Type | Owner | Data sensitivity | Exposure | Notes |
|----------|------|------|-------|------------------|----------|-------|
| A-001 | lab-web-01 | Ubuntu VM / container | Student | Low (synthetic) | Lab-only | Generates auth and web logs |
| A-002 | auth.log | System log | Student | Medium (credentials events) | Local file | Source for SQL/log review |
| A-003 | Analyst workstation | Windows laptop | Student | Low | Local | Used to run queries and write reports |

Update this table when you add AWS resources (EC2, SG, IAM user) later.
