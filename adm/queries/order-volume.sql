SELECT
    platform_id AS "PLATFORMID",
    platform_name AS "PLATFORMNAME",
    total_order_delivered AS "TOTAL ORDER DELIVERED"
FROM vw_order_volume
ORDER BY total_order_delivered DESC;