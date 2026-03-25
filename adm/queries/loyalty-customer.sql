SELECT 
    lt.tier_name AS tier,
    c.customer_id,
    c.username,
    ROUND(COALESCE(cl.total_spent, 0), 2) AS total_spent
FROM LOYALTY_TIER lt
JOIN C_LOYALTY cl ON lt.tier_id = cl.tier_id
LEFT JOIN CUSTOMER c ON cl.customer_id = c.customer_id
ORDER BY 
    CASE lt.tier_name
        WHEN 'Diamond' THEN 1
        WHEN 'Gold'    THEN 2
        WHEN 'Silver'  THEN 3
        ELSE 4
    END,
    cl.total_spent DESC;