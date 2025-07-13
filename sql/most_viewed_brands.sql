SELECT 
  COALESCE(brand, 'unknown') AS brand,
  COUNT(*) AS views
FROM events
WHERE event_type = 'view'
GROUP BY COALESCE(brand, 'unknown')
ORDER BY views DESC
LIMIT 10;
