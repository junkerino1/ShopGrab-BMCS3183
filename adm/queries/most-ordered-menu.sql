SELECT
    restaurant_name,
    item_id,
    item_name,
    total_qty_ordered
FROM vw_most_ordered_menu
ORDER BY total_qty_ordered DESC, restaurant_name, item_name;