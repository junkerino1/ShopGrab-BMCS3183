SELECT
    p.platform_id AS "PLATFORMID",
    p.platform_name AS "PLATFORMNAME",
    COUNT(*) AS "TOTAL ORDER DELIVERED"
FROM CUST_ORDER o
JOIN PLATFORM p ON o.platform_id = p.platform_id
WHERE o.order_status = 'Completed'
  AND o.order_type = 'D'
GROUP BY p.platform_id, p.platform_name
ORDER BY "TOTAL ORDER DELIVERED" DESC;