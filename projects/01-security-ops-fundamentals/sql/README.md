# How to run the sample analysis (SQLite)

From this project folder:

```bash
sqlite3 analysis.db
```

```sql
.mode csv
.import sample-logs/auth-events.csv auth_events
.headers on
.mode column
.read sql/failed-logins-by-ip.sql
.read sql/successful-auth-and-sudo.sql
```

Save a redacted screenshot or text output under `evidence/`.
