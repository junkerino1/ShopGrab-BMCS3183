SELECT 
    lt.tier_name AS tier,
    SUM(p.amount_paid) AS total_order_amount,
    AVG(p.amount_paid) AS avg_order_value
FROM LOYALTY_TIER lt
JOIN C_LOYALTY cl ON lt.tier_id = cl.tier_id
JOIN CUST_ORDER o ON cl.customer_id = o.customer_id
JOIN PAYMENT p ON o.order_id = p.order_id
GROUP BY lt.tier_name
ORDER BY 
    CASE lt.tier_name 
        WHEN 'Diamond' THEN 1 
        WHEN 'Gold'    THEN 2 
        WHEN 'Silver'  THEN 3 
        ELSE 4
    END;

