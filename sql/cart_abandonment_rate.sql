SELECT 
  ROUND(100.0 * 
    (SELECT COUNT(*) FROM events WHERE event_type = 'cart')
    / (SELECT COUNT(*) FROM events WHERE event_type = 'view'), 2
  ) AS cart_conversion_rate,
  ROUND(100.0 * 
    (SELECT COUNT(*) FROM events WHERE event_type = 'purchase')
    / (SELECT COUNT(*) FROM events WHERE event_type = 'cart'), 2
  ) AS purchase_from_cart_rate;
