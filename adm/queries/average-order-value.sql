SELECT
    tier,
    total_order_amount,
    avg_order_value
FROM vw_average_order_value
ORDER BY
    CASE tier
        WHEN 'Diamond' THEN 1
        WHEN 'Gold' THEN 2
        WHEN 'Silver' THEN 3
        ELSE 4
    END;
