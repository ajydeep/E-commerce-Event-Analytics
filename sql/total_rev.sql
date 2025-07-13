SELECT 
    COALESCE(category_code, 'unknown') AS category_code,
    ROUND(SUM(price), 2) AS total_revenue
FROM events
WHERE event_type = 'purchase'
GROUP BY COALESCE(category_code, 'unknown')
ORDER BY total_revenue DESC;
