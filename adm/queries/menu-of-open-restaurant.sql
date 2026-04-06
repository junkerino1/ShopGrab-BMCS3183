COLUMN restaurant_name  FORMAT A15            HEADING 'Restaurant'
COLUMN halal_status     FORMAT A15   HEADING 'Halal Status'
COLUMN item_id         FORMAT 9999      HEADING 'Item ID'
COLUMN item_type       FORMAT A10            HEADING 'Item Type'
COLUMN item_name       FORMAT A20            HEADING 'Item Name'
COLUMN price           FORMAT 999.99   HEADING 'Price'
COLUMN is_budget       FORMAT A7             HEADING 'Budget?'
COLUMN is_super_deal   FORMAT A7             HEADING 'Deal?'

SELECT
  restaurant_name,
  halal_status,
  item_id,
  item_name,
  item_type,
  price,
  is_budget,
  is_super_deal
FROM vw_menu_of_open_restaurant
ORDER BY restaurant_name, item_type, price;