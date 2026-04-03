SELECT
  restaurant_name,
  halal_status,
  location,
  opening_time,
  closing_time,
  item_id,
  item_name,
  item_type,
  price,
  is_budget,
  is_super_deal
FROM vw_menu_of_open_restaurant
ORDER BY restaurant_name, item_type, price;