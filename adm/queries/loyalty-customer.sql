SELECT
    tier,
    customer_id,
    username,
    total_spent
FROM vw_loyalty_customer
ORDER BY
    CASE tier
        WHEN 'Diamond' THEN 1
        WHEN 'Gold' THEN 2
        WHEN 'Silver' THEN 3
        ELSE 4
    END,
    total_spent DESC;