SELECT DATE(event_time) AS date, COUNT(*) AS purchases
FROM events
WHERE event_type = 'purchase'
GROUP BY DATE(event_time)
ORDER BY date;
