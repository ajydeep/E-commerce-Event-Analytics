SELECT 
  COALESCE(category_code, 'unknown') AS category_code,
  COUNT(DISTINCT user_session) AS unique_sessions
FROM events
WHERE event_type = 'view'
GROUP BY COALESCE(category_code, 'unknown')
ORDER BY unique_sessions DESC
LIMIT 10;
