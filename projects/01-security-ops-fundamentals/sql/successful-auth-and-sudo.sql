# Successful logins and sudo activity

SELECT
  timestamp,
  source_ip,
  user,
  event,
  result
FROM auth_events
WHERE result = 'success'
ORDER BY timestamp;
