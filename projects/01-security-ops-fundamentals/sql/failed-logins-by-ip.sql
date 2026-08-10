# Failed logins by source IP
# Import auth-events.csv into SQLite or any SQL engine, then run:

-- SQLite example:
-- .mode csv
-- .import sample-logs/auth-events.csv auth_events

SELECT
  source_ip,
  COUNT(*) AS failed_attempts,
  MIN(timestamp) AS first_seen,
  MAX(timestamp) AS last_seen
FROM auth_events
WHERE event = 'ssh_login'
  AND result = 'failure'
GROUP BY source_ip
ORDER BY failed_attempts DESC;
