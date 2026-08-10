# Running the sample analysis (SQLite)

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

I keep redacted screenshots or text output under `evidence/`.
