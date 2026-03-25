COLUMN restaurant_name FORMAT A20
COLUMN item_name FORMAT A25

SELECT * FROM (
    SELECT 
        r.name AS restaurant_name,
        m.item_id,
        m.name AS item_name,
        COALESCE(SUM(od.quantity), 0) AS total_qty_ordered
    FROM RESTAURANT r
    JOIN MENU_ITEM m ON r.restaurant_id = m.restaurant_id
    LEFT JOIN ORDER_DETAILS od ON m.item_id = od.menu_item_id
    GROUP BY 
        r.name,
        m.item_id,
        m.name
    ORDER BY 
        total_qty_ordered DESC,
        r.name,
        m.name
)
WHERE ROWNUM <= 5;