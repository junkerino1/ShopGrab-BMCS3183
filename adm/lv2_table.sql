-- 12. OWNER
INSERT INTO OWNER (restaurant_id, email, username, password, phone_no)
VALUES (1, 'owner_bk@email.com', 'bk_owner', 'ownerpass1', '0161112222');
INSERT INTO OWNER (restaurant_id, email, username, password, phone_no)
VALUES (2, 'owner_sg@email.com', 'sg_owner', 'ownerpass2', '0162223333');
INSERT INTO OWNER (restaurant_id, email, username, password, phone_no)
VALUES (3, 'owner_tl@email.com', 'tl_owner', 'ownerpass3', '0163334444');
INSERT INTO OWNER (restaurant_id, email, username, password, phone_no)
VALUES (4, 'owner_dtf@email.com', 'dtf_owner', 'ownerpass4', '0164445555');
INSERT INTO OWNER (restaurant_id, email, username, password, phone_no)
VALUES (5, 'owner_tc@email.com', 'tc_owner', 'ownerpass5', '0165556666');

-- 13. RESTAURANT_CATEGORY_MAP
INSERT INTO RESTAURANT_CATEGORY_MAP (restaurant_id, category_id) VALUES (1, 1); -- Burger King -> Fast Food
INSERT INTO RESTAURANT_CATEGORY_MAP (restaurant_id, category_id) VALUES (2, 2); -- Seoul Garden -> Korean
INSERT INTO RESTAURANT_CATEGORY_MAP (restaurant_id, category_id) VALUES (3, 3); -- Tealive -> Beverages
INSERT INTO RESTAURANT_CATEGORY_MAP (restaurant_id, category_id) VALUES (4, 4); -- Din Tai Fung -> Chinese
INSERT INTO RESTAURANT_CATEGORY_MAP (restaurant_id, category_id) VALUES (5, 1); -- Texas Chicken -> Fast Food
INSERT INTO RESTAURANT_CATEGORY_MAP (restaurant_id, category_id) VALUES (5, 5); -- Texas Chicken -> Western

-- 14. MENU_ITEM (5 per restaurant = 25 items)
-- Burger King (restaurant_id = 1)
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (1, 'Whopper', 'Flame-grilled beef burger', 15.90, 'Food', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (1, 'Chicken Royale', 'Crispy chicken burger', 13.50, 'Food', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (1, 'BK Fish', 'Crispy fish fillet burger', 11.90, 'Food', 'Y', 'Y', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (1, 'Onion Rings', 'Crispy golden onion rings', 6.50, 'Food', 'Y', 'Y', 'Y');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (1, 'Coca-Cola', 'Ice cold Coca-Cola', 4.50, 'Drink', 'Y', 'Y', 'N');

-- Seoul Garden (restaurant_id = 2)
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (2, 'BBQ Beef Set', 'Marinated beef slices for BBQ', 35.90, 'Food', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (2, 'Kimchi Jjigae', 'Spicy kimchi stew', 18.90, 'Food', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (2, 'Japchae', 'Korean glass noodles', 14.50, 'Food', 'Y', 'Y', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (2, 'Tteokbokki', 'Spicy rice cakes', 12.90, 'Food', 'Y', 'Y', 'Y');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (2, 'Korean Iced Tea', 'Barley tea iced', 5.50, 'Drink', 'Y', 'Y', 'N');

-- Tealive (restaurant_id = 3)
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (3, 'Pearl Milk Tea', 'Signature boba tea', 8.50, 'Drink', 'Y', 'Y', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (3, 'Brown Sugar Boba', 'Tiger sugar boba milk', 10.90, 'Drink', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (3, 'Matcha Latte', 'Japanese matcha latte', 9.50, 'Drink', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (3, 'Fruit Tea Passion', 'Passion fruit tea', 7.90, 'Drink', 'Y', 'Y', 'Y');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (3, 'Taro Smoothie', 'Creamy taro smoothie', 11.50, 'Drink', 'Y', 'N', 'N');

-- Din Tai Fung (restaurant_id = 4)
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (4, 'Xiao Long Bao', 'Steamed pork soup dumplings (10pcs)', 28.90, 'Food', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (4, 'Fried Rice', 'Egg fried rice with shrimp', 22.50, 'Food', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (4, 'Wonton Soup', 'Shrimp and pork wonton soup', 18.90, 'Food', 'Y', 'Y', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (4, 'Dan Dan Noodles', 'Spicy sesame noodles', 16.50, 'Food', 'Y', 'Y', 'Y');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (4, 'Hot and Sour Soup', 'Traditional hot and sour soup', 14.90, 'Food', 'Y', 'Y', 'N');

-- Texas Chicken (restaurant_id = 5)
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (5, 'Spicy Chicken', '2pc spicy fried chicken', 14.90, 'Food', 'Y', 'N', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (5, 'Chicken Tender', 'Crispy chicken tenders (5pcs)', 12.50, 'Food', 'Y', 'Y', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (5, 'Honey Biscuit', 'Buttery honey biscuit', 4.90, 'Food', 'Y', 'Y', 'Y');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (5, 'Coleslaw', 'Creamy coleslaw side', 5.50, 'Food', 'Y', 'Y', 'N');
INSERT INTO MENU_ITEM (restaurant_id, name, description, price, item_type, is_available, is_budget, is_super_deal)
VALUES (5, 'Milo Iced', 'Iced chocolate malt drink', 5.90, 'Drink', 'Y', 'Y', 'N');

-- 15. SUB_PAYMENT (8 payments for 8 subscriptions)
INSERT INTO SUB_PAYMENT (subscription_id, amount, payment_method, payment_status)
VALUES (1, 9.99, 'Credit Card', 'Completed');
INSERT INTO SUB_PAYMENT (subscription_id, amount, payment_method, payment_status)
VALUES (2, 9.99, 'E-Wallet', 'Completed');
INSERT INTO SUB_PAYMENT (subscription_id, amount, payment_method, payment_status)
VALUES (3, 9.99, 'Credit Card', 'Completed');
INSERT INTO SUB_PAYMENT (subscription_id, amount, payment_method, payment_status)
VALUES (4, 9.99, 'Online Banking', 'Completed');
INSERT INTO SUB_PAYMENT (subscription_id, amount, payment_method, payment_status)
VALUES (5, 9.99, 'E-Wallet', 'Completed');
INSERT INTO SUB_PAYMENT (subscription_id, amount, payment_method, payment_status)
VALUES (6, 9.99, 'Credit Card', 'Completed');
INSERT INTO SUB_PAYMENT (subscription_id, amount, payment_method, payment_status)
VALUES (7, 9.99, 'Online Banking', 'Completed');
INSERT INTO SUB_PAYMENT (subscription_id, amount, payment_method, payment_status)
VALUES (8, 9.99, 'E-Wallet', 'Completed');

-- 16. VOUCHER (5 vouchers)
INSERT INTO VOUCHER (voucher_code, min_spend, max_amount, category_id, restaurant_id, voucher_type, distribution_type, benefit_type, valid_start, valid_end, usage_limit, status)
VALUES ('NEWUSER10', 0.00, 10.00, NULL, NULL, 'Fixed', 'Public', 'Meal', SYSDATE, SYSDATE + 90, 100, 'Active');
INSERT INTO VOUCHER (voucher_code, min_spend, max_amount, category_id, restaurant_id, voucher_type, distribution_type, benefit_type, valid_start, valid_end, usage_limit, status)
VALUES ('RM5DEAL', 15.00, 5.00, NULL, NULL, 'Fixed', 'Public', 'Meal', SYSDATE, SYSDATE + 30, 100, 'Active');
INSERT INTO VOUCHER (voucher_code, min_spend, max_amount, category_id, restaurant_id, voucher_type, distribution_type, benefit_type, valid_start, valid_end, usage_limit, status)
VALUES ('HURRY3', 10.00, 3.00, NULL, NULL, 'Fixed', 'Public', 'Meal', SYSDATE, SYSDATE + 3, 50, 'Active');
INSERT INTO VOUCHER (voucher_code, min_spend, max_amount, category_id, restaurant_id, voucher_type, distribution_type, benefit_type, valid_start, valid_end, usage_limit, status)
VALUES ('MIDWEEK5', 20.00, 5.00, NULL, NULL, 'Fixed', 'Public', 'Meal', SYSDATE, SYSDATE + 5, 50, 'Active');
INSERT INTO VOUCHER (voucher_code, min_spend, max_amount, category_id, restaurant_id, voucher_type, distribution_type, benefit_type, valid_start, valid_end, usage_limit, status)
VALUES ('WEEKEND10', 30.00, 10.00, NULL, NULL, 'Fixed', 'Public', 'Meal', SYSDATE, SYSDATE + 7, 50, 'Active');