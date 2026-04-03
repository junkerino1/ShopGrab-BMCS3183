SELECT
    restaurant_id,
    restaurant_name,
    total_items_sold,
    total_revenue
FROM vw_restaurant_revenue
ORDER BY total_revenue DESC;