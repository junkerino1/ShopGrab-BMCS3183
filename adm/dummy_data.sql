-- ==========================================
-- LEVEL 0: Independent Tables
-- ==========================================

-- 1. LOYALTY_TIER
INSERT INTO LOYALTY_TIER (tier_name, min_total_spend) VALUES ('Silver', 0);
INSERT INTO LOYALTY_TIER (tier_name, min_total_spend) VALUES ('Gold', 500);
INSERT INTO LOYALTY_TIER (tier_name, min_total_spend) VALUES ('Diamond', 1000);

-- 2. PLATFORM
INSERT INTO PLATFORM (platform_name) VALUES ('GrabFood');
INSERT INTO PLATFORM (platform_name) VALUES ('FoodPanda');

-- 3. SUB_PLAN
INSERT INTO SUB_PLAN (plan_name, price, duration) VALUES ('Premium', 9.99, 30);

-- 4. RESTAURANT_CATEGORY
INSERT INTO RESTAURANT_CATEGORY (category_name) VALUES ('Fast Food');
INSERT INTO RESTAURANT_CATEGORY (category_name) VALUES ('Korean');
INSERT INTO RESTAURANT_CATEGORY (category_name) VALUES ('Beverages');
INSERT INTO RESTAURANT_CATEGORY (category_name) VALUES ('Chinese');
INSERT INTO RESTAURANT_CATEGORY (category_name) VALUES ('Western');

-- 5. RESTAURANT (5 restaurants)
INSERT INTO RESTAURANT (name, description, halal_status, rating, location, address, phone, opening_time, closing_time)
VALUES ('Burger King', 'Flame-grilled burgers and fast food', 'Y', 4.5, 'Setapak', '12 Danau Kota, Setapak', '034123456', '10:00', '22:00');
INSERT INTO RESTAURANT (name, description, halal_status, rating, location, address, phone, opening_time, closing_time)
VALUES ('Seoul Garden', 'Authentic Korean BBQ buffet', 'N', 4.7, 'Bukit Bintang', '88 Pavilion KL, Bukit Bintang', '032114455', '11:00', '23:00');
INSERT INTO RESTAURANT (name, description, halal_status, rating, location, address, phone, opening_time, closing_time)
VALUES ('Tealive', 'Bubble tea and refreshing beverages', 'Y', 4.8, 'Cheras', '99 Leisure Mall, Cheras', '039876543', '10:00', '22:00');
INSERT INTO RESTAURANT (name, description, halal_status, rating, location, address, phone, opening_time, closing_time)
VALUES ('Din Tai Fung', 'Premium Chinese dim sum and noodles', 'N', 4.9, 'KLCC', '15 Suria KLCC, Kuala Lumpur', '032288990', '10:00', '21:30');
INSERT INTO RESTAURANT (name, description, halal_status, rating, location, address, phone, opening_time, closing_time)
VALUES ('Texas Chicken', 'Southern-style fried chicken', 'Y', 4.4, 'Bangsar', '23 Bangsar Village, Bangsar', '032776655', '09:00', '22:00');

-- 6. CUSTOMER (20 customers)
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('diana@email.com', 'diana_d', 'hashpass004', '0134455667', '10 Jalan Tun Razak, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('evan@email.com', 'evan_e', 'hashpass005', '0145566778', '55 Jalan Bukit Bintang, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('fiona@email.com', 'fiona_f', 'hashpass006', '0156677889', '32 Jalan Bangsar, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('george@email.com', 'george_g', 'hashpass007', '0167788990', '18 Jalan Setapak, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('hannah@email.com', 'hannah_h', 'hashpass008', '0178899001', '67 Jalan Kepong, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('ivan@email.com', 'ivan_i', 'hashpass009', '0189900112', '41 Jalan Puchong, Selangor');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('jenny@email.com', 'jenny_j', 'hashpass010', '0190011223', '29 Jalan PJ, Selangor');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('kevin@email.com', 'kevin_k', 'hashpass011', '0121122334', '14 Jalan Subang, Selangor');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('lisa@email.com', 'lisa_l', 'hashpass012', '0132233445', '60 Jalan Damansara, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('mike@email.com', 'mike_m', 'hashpass013', '0143344556', '8 Jalan Mont Kiara, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('nora@email.com', 'nora_n', 'hashpass014', '0154455667', '73 Jalan Sri Hartamas, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('oscar@email.com', 'oscar_o', 'hashpass015', '0165566778', '22 Jalan Desa Pandan, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('penny@email.com', 'penny_p', 'hashpass016', '0176677889', '39 Jalan Wangsa Maju, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('quinn@email.com', 'quinn_q', 'hashpass017', '0187788990', '51 Jalan Sentul, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('ryan@email.com', 'ryan_r', 'hashpass018', '0198899001', '16 Jalan Titiwangsa, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('sarah@email.com', 'sarah_s', 'hashpass019', '0129900112', '44 Jalan Segambut, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('tom@email.com', 'tom_t', 'hashpass020', '0130011223', '7 Jalan Loke Yew, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('alice@email.com', 'alice99', 'hashpass001', '0123456789', '123 Jalan Ampang, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('bob@email.com', 'bob_builder', 'hashpass002', '0198765432', '45 Jalan Cheras, KL');
INSERT INTO CUSTOMER (email, username, password, phone_no, default_address)
VALUES ('charlie@email.com', 'charlie_c', 'hashpass003', '0112233445', '78 Jalan Genting, KL');

-- ==========================================
-- LEVEL 1: Dependent Tables
-- ==========================================

-- 7. C_LOYALTY (20 customers, mix of tiers)
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (1, 1, 120.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (2, 2, 650.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (3, 3, 1200.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (4, 1, 80.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (5, 1, 200.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (6, 2, 550.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (7, 1, 45.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (8, 1, 310.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (9, 2, 700.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (10, 3, 1500.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (11, 1, 90.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (12, 1, 150.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (13, 2, 520.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (14, 1, 60.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (15, 1, 275.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (16, 3, 1100.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (17, 1, 30.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (18, 2, 600.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (19, 1, 180.00);
INSERT INTO C_LOYALTY (customer_id, tier_id, total_spent) VALUES (20, 1, 400.00);

-- 8. COIN_WALLET (20 customers)
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (1, 500);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (2, 1200);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (3, 2500);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (4, 150);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (5, 400);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (6, 900);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (7, 80);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (8, 600);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (9, 1400);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (10, 3000);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (11, 200);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (12, 350);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (13, 1000);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (14, 100);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (15, 550);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (16, 2200);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (17, 50);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (18, 1100);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (19, 370);
INSERT INTO COIN_WALLET (customer_id, total_coins) VALUES (20, 800);

-- 9. L_BENEFIT
INSERT INTO L_BENEFIT (tier_id, benefit_type, benefit_value, description)
VALUES (2, 'Voucher', 5.00, 'Monthly RM5 Voucher');
INSERT INTO L_BENEFIT (tier_id, benefit_type, benefit_value, description)
VALUES (3, 'Coin Multiplier', 2.00, '2x Coin Earning Rate');

-- 10. RIDER (10 per platform = 20 riders)
-- GrabFood riders (platform_id = 1)
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Ahmad Razak', '900101-14-5566', '0129998881', 1, 'WAA1234', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Razif Hamid', '910215-10-7788', '0129998882', 1, 'WAB2345', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Kamal Arif', '880303-14-1122', '0129998883', 1, 'WAC3456', 'Busy');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Hafiz Noor', '950420-08-3344', '0129998884', 1, 'WAD4567', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Zul Iskandar', '870512-14-5500', '0129998885', 1, 'WAE5678', 'Offline');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Faizal Rahman', '930630-10-6677', '0129998886', 1, 'WAF6789', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Amir Syafiq', '960718-14-8899', '0129998887', 1, 'WAG7890', 'Busy');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Danish Hakim', '940825-08-0011', '0129998888', 1, 'WAH8901', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Izzat Faris', '890905-14-2233', '0129998889', 1, 'WAI9012', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Shahrul Nizam', '920110-10-4455', '0129998890', 1, 'WAJ0123', 'Offline');

-- FoodPanda riders (platform_id = 2)
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Muthu Samy', '880202-10-1234', '0137776661', 2, 'VBB5678', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Raj Kumar', '910315-10-5678', '0137776662', 2, 'VBC6789', 'Busy');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Wei Liang', '870428-14-9012', '0137776663', 2, 'VBD7890', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Chong Hao', '950510-08-3456', '0137776664', 2, 'VBE8901', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Arjun Nair', '930622-10-7890', '0137776665', 2, 'VBF9012', 'Offline');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Bala Ganesh', '860708-14-1234', '0137776666', 2, 'VBG0123', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Tan Jun Wei', '940815-08-5678', '0137776667', 2, 'VBH1234', 'Busy');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Lim Kah Heng', '890920-14-9012', '0137776668', 2, 'VBI2345', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Suresh Rajan', '920105-10-3456', '0137776669', 2, 'VBJ3456', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Vino Kumar', '960218-14-7890', '0137776670', 2, 'VBK4567', 'Offline');

-- Sync rider_count in PLATFORM based on inserted rider data
UPDATE PLATFORM p
SET rider_count = (SELECT COUNT(*) FROM RIDER r WHERE r.platform_id = p.platform_id);

-- 11. SUBSCRIPTION (8 customers subscribed)
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (2, 1, SYSDATE, SYSDATE + 30, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (3, 1, SYSDATE, SYSDATE + 30, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (6, 1, SYSDATE, SYSDATE + 30, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (9, 1, SYSDATE, SYSDATE + 30, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (10, 1, SYSDATE, SYSDATE + 30, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (13, 1, SYSDATE, SYSDATE + 30, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (16, 1, SYSDATE, SYSDATE + 30, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (18, 1, SYSDATE, SYSDATE + 30, 'Active');

-- ==========================================
-- LEVEL 2: Dependent Tables
-- ==========================================

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

-- 16. VOUCHER (2 vouchers)
INSERT INTO VOUCHER (voucher_code, min_spend, max_amount, category_id, restaurant_id, voucher_type, distribution_type, benefit_type, valid_start, valid_end, usage_limit, status)
VALUES ('NEWUSER10', 0.00, 10.00, NULL, NULL, 'Fixed', 'Public', 'Meal', SYSDATE, SYSDATE + 90, 100, 'Active');
INSERT INTO VOUCHER (voucher_code, min_spend, max_amount, category_id, restaurant_id, voucher_type, distribution_type, benefit_type, valid_start, valid_end, usage_limit, status)
VALUES ('RM5DEAL', 15.00, 5.00, NULL, NULL, 'Fixed', 'Public', 'Meal', SYSDATE, SYSDATE + 30, 100, 'Active');

-- ==========================================
-- LEVEL 3: Dependent Tables
-- ==========================================

-- 17. VOUCHER_WALLET (give some customers vouchers)
INSERT INTO VOUCHER_WALLET (customer_id, voucher_id, is_used) VALUES (1, 1, 'N');
INSERT INTO VOUCHER_WALLET (customer_id, voucher_id, is_used) VALUES (2, 2, 'N');
INSERT INTO VOUCHER_WALLET (customer_id, voucher_id, is_used) VALUES (5, 1, 'N');
INSERT INTO VOUCHER_WALLET (customer_id, voucher_id, is_used) VALUES (8, 2, 'N');
INSERT INTO VOUCHER_WALLET (customer_id, voucher_id, is_used) VALUES (12, 1, 'N');
INSERT INTO VOUCHER_WALLET (customer_id, voucher_id, is_used) VALUES (15, 2, 'N');

-- 18. CUST_ORDER (2 orders per customer = 40 orders)
-- Customer 1: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (1, 1, 1, 1, NULL, 0, 5.00, 'Completed', '123 Jalan Ampang, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (1, 3, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');

-- Customer 2: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (2, 2, 2, 11, NULL, 0, 5.00, 'Completed', '45 Jalan Cheras, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (2, 4, 1, 2, NULL, 100, 5.00, 'Completed', '45 Jalan Cheras, KL', 'Paid', 'D');

-- Customer 3: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (3, 5, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (3, 1, 2, 12, NULL, 50, 5.00, 'Completed', '78 Jalan Genting, KL', 'Paid', 'D');

-- Customer 4: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (4, 2, 1, 3, NULL, 0, 5.00, 'Completed', '10 Jalan Tun Razak, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (4, 3, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');

-- Customer 5: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (5, 4, 2, 13, NULL, 0, 5.00, 'Completed', '55 Jalan Bukit Bintang, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (5, 5, 1, 4, NULL, 0, 5.00, 'Completed', '55 Jalan Bukit Bintang, KL', 'Paid', 'D');

-- Customer 6: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (6, 1, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (6, 2, 1, 5, NULL, 0, 5.00, 'Completed', '32 Jalan Bangsar, KL', 'Paid', 'D');

-- Customer 7: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (7, 3, 2, 14, NULL, 0, 5.00, 'Completed', '18 Jalan Setapak, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (7, 5, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');

-- Customer 8: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (8, 4, 1, 6, NULL, 0, 5.00, 'Completed', '67 Jalan Kepong, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (8, 1, 2, 15, NULL, 0, 5.00, 'Completed', '67 Jalan Kepong, KL', 'Paid', 'D');

-- Customer 9: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (9, 2, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (9, 3, 1, 7, NULL, 0, 5.00, 'Completed', '41 Jalan Puchong, Selangor', 'Paid', 'D');

-- Customer 10: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (10, 5, 2, 16, NULL, 0, 5.00, 'Completed', '29 Jalan PJ, Selangor', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (10, 4, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');

-- Customer 11: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (11, 1, 1, 8, NULL, 0, 5.00, 'Completed', '14 Jalan Subang, Selangor', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (11, 2, 2, 17, NULL, 0, 5.00, 'Completed', '14 Jalan Subang, Selangor', 'Paid', 'D');

-- Customer 12: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (12, 3, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (12, 5, 1, 9, NULL, 0, 5.00, 'Completed', '60 Jalan Damansara, KL', 'Paid', 'D');

-- Customer 13: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (13, 4, 2, 18, NULL, 0, 5.00, 'Completed', '8 Jalan Mont Kiara, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (13, 1, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');

-- Customer 14: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (14, 2, 1, 10, NULL, 0, 5.00, 'Completed', '73 Jalan Sri Hartamas, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (14, 3, 2, 19, NULL, 0, 5.00, 'Completed', '73 Jalan Sri Hartamas, KL', 'Paid', 'D');

-- Customer 15: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (15, 5, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (15, 4, 1, 1, NULL, 0, 5.00, 'Completed', '22 Jalan Desa Pandan, KL', 'Paid', 'D');

-- Customer 16: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (16, 1, 2, 11, NULL, 0, 5.00, 'Completed', '39 Jalan Wangsa Maju, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (16, 2, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');

-- Customer 17: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (17, 3, 1, 2, NULL, 0, 5.00, 'Completed', '51 Jalan Sentul, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (17, 5, 2, 12, NULL, 0, 5.00, 'Completed', '51 Jalan Sentul, KL', 'Paid', 'D');

-- Customer 18: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (18, 4, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (18, 1, 1, 3, NULL, 0, 5.00, 'Completed', '16 Jalan Titiwangsa, KL', 'Paid', 'D');

-- Customer 19: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (19, 2, 2, 13, NULL, 0, 5.00, 'Completed', '44 Jalan Segambut, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (19, 3, NULL, NULL, NULL, 0, 0.00, 'Completed', NULL, 'Paid', 'P');

-- Customer 20: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (20, 5, 1, 4, NULL, 0, 5.00, 'Completed', '7 Jalan Loke Yew, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (20, 4, 2, 14, NULL, 0, 5.00, 'Completed', '7 Jalan Loke Yew, KL', 'Paid', 'D');

-- ==========================================
-- LEVEL 4: Dependent Tables
-- ==========================================

-- 19. ORDER_DETAILS (at least 2 per order = 80+ rows)
-- Order 1 (Cust 1, Burger King): Whopper(1) + Chicken Royale(2)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (1, 1, 2, 15.90, 'No pickles');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (1, 2, 1, 13.50, NULL);

-- Order 2 (Cust 1, Tealive): Pearl Milk Tea(11) + Brown Sugar Boba(12)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (2, 11, 2, 8.50, 'Less sugar');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (2, 12, 1, 10.90, NULL);

-- Order 3 (Cust 2, Seoul Garden): BBQ Beef Set(6) + Kimchi Jjigae(7)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (3, 6, 1, 35.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (3, 7, 1, 18.90, 'Extra spicy');

-- Order 4 (Cust 2, Din Tai Fung): Xiao Long Bao(16) + Fried Rice(17)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (4, 16, 2, 28.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (4, 17, 1, 22.50, 'No prawns');

-- Order 5 (Cust 3, Texas Chicken): Spicy Chicken(21) + Chicken Tender(22)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (5, 21, 1, 14.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (5, 22, 1, 12.50, 'Extra sauce');

-- Order 6 (Cust 3, Burger King): BK Fish(3) + Onion Rings(4) + Coca-Cola(5)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (6, 3, 1, 11.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (6, 4, 2, 6.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (6, 5, 1, 4.50, 'No ice');

-- Order 7 (Cust 4, Seoul Garden): Japchae(8) + Tteokbokki(9)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (7, 8, 1, 14.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (7, 9, 2, 12.90, 'Mild spicy');

-- Order 8 (Cust 4, Tealive): Matcha Latte(13) + Fruit Tea Passion(14)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (8, 13, 1, 9.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (8, 14, 2, 7.90, 'Less ice');

-- Order 9 (Cust 5, Din Tai Fung): Wonton Soup(18) + Dan Dan Noodles(19)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (9, 18, 1, 18.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (9, 19, 1, 16.50, 'Extra chili oil');

-- Order 10 (Cust 5, Texas Chicken): Spicy Chicken(21) + Honey Biscuit(23)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (10, 21, 2, 14.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (10, 23, 2, 4.90, NULL);

-- Order 11 (Cust 6, Burger King): Whopper(1) + Coca-Cola(5)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (11, 1, 1, 15.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (11, 5, 2, 4.50, NULL);

-- Order 12 (Cust 6, Seoul Garden): BBQ Beef Set(6) + Korean Iced Tea(10)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (12, 6, 2, 35.90, 'Well done');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (12, 10, 2, 5.50, NULL);

-- Order 13 (Cust 7, Tealive): Pearl Milk Tea(11) + Taro Smoothie(15)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (13, 11, 1, 8.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (13, 15, 1, 11.50, 'Extra boba');

-- Order 14 (Cust 7, Texas Chicken): Chicken Tender(22) + Coleslaw(24) + Milo Iced(25)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (14, 22, 1, 12.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (14, 24, 1, 5.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (14, 25, 1, 5.90, NULL);

-- Order 15 (Cust 8, Din Tai Fung): Xiao Long Bao(16) + Hot and Sour Soup(20)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (15, 16, 1, 28.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (15, 20, 1, 14.90, NULL);

-- Order 16 (Cust 8, Burger King): Chicken Royale(2) + BK Fish(3)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (16, 2, 2, 13.50, 'No mayo');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (16, 3, 1, 11.90, NULL);

-- Order 17 (Cust 9, Seoul Garden): Kimchi Jjigae(7) + Tteokbokki(9)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (17, 7, 1, 18.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (17, 9, 1, 12.90, NULL);

-- Order 18 (Cust 9, Tealive): Brown Sugar Boba(12) + Matcha Latte(13)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (18, 12, 2, 10.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (18, 13, 1, 9.50, 'Hot');

-- Order 19 (Cust 10, Texas Chicken): Spicy Chicken(21) + Milo Iced(25)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (19, 21, 2, 14.90, 'Extra crispy');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (19, 25, 2, 5.90, NULL);

-- Order 20 (Cust 10, Din Tai Fung): Fried Rice(17) + Dan Dan Noodles(19)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (20, 17, 1, 22.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (20, 19, 1, 16.50, NULL);

-- Order 21 (Cust 11, Burger King): Whopper(1) + Onion Rings(4)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (21, 1, 1, 15.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (21, 4, 1, 6.50, NULL);

-- Order 22 (Cust 11, Seoul Garden): BBQ Beef Set(6) + Japchae(8)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (22, 6, 1, 35.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (22, 8, 1, 14.50, NULL);

-- Order 23 (Cust 12, Tealive): Fruit Tea Passion(14) + Taro Smoothie(15)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (23, 14, 2, 7.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (23, 15, 1, 11.50, 'No sugar');

-- Order 24 (Cust 12, Texas Chicken): Spicy Chicken(21) + Honey Biscuit(23)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (24, 21, 1, 14.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (24, 23, 3, 4.90, NULL);

-- Order 25 (Cust 13, Din Tai Fung): Xiao Long Bao(16) + Wonton Soup(18)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (25, 16, 1, 28.90, 'Extra vinegar');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (25, 18, 1, 18.90, NULL);

-- Order 26 (Cust 13, Burger King): BK Fish(3) + Coca-Cola(5)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (26, 3, 2, 11.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (26, 5, 1, 4.50, NULL);

-- Order 27 (Cust 14, Seoul Garden): Kimchi Jjigae(7) + Korean Iced Tea(10)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (27, 7, 2, 18.90, 'Less salt');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (27, 10, 1, 5.50, NULL);

-- Order 28 (Cust 14, Tealive): Pearl Milk Tea(11) + Brown Sugar Boba(12)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (28, 11, 1, 8.50, '50% sugar');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (28, 12, 1, 10.90, NULL);

-- Order 29 (Cust 15, Texas Chicken): Chicken Tender(22) + Coleslaw(24)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (29, 22, 2, 12.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (29, 24, 1, 5.50, NULL);

-- Order 30 (Cust 15, Din Tai Fung): Dan Dan Noodles(19) + Hot and Sour Soup(20)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (30, 19, 1, 16.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (30, 20, 2, 14.90, NULL);

-- Order 31 (Cust 16, Burger King): Whopper(1) + Chicken Royale(2)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (31, 1, 2, 15.90, 'Extra cheese');
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (31, 2, 1, 13.50, NULL);

-- Order 32 (Cust 16, Seoul Garden): BBQ Beef Set(6) + Tteokbokki(9)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (32, 6, 1, 35.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (32, 9, 2, 12.90, NULL);

-- Order 33 (Cust 17, Tealive): Matcha Latte(13) + Fruit Tea Passion(14)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (33, 13, 2, 9.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (33, 14, 1, 7.90, NULL);

-- Order 34 (Cust 17, Texas Chicken): Spicy Chicken(21) + Milo Iced(25)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (34, 21, 1, 14.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (34, 25, 1, 5.90, NULL);

-- Order 35 (Cust 18, Din Tai Fung): Xiao Long Bao(16) + Fried Rice(17)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (35, 16, 2, 28.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (35, 17, 1, 22.50, 'Vegetarian');

-- Order 36 (Cust 18, Burger King): Onion Rings(4) + Coca-Cola(5)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (36, 4, 2, 6.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (36, 5, 2, 4.50, NULL);

-- Order 37 (Cust 19, Seoul Garden): Japchae(8) + Korean Iced Tea(10)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (37, 8, 1, 14.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (37, 10, 2, 5.50, NULL);

-- Order 38 (Cust 19, Tealive): Taro Smoothie(15) + Pearl Milk Tea(11)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (38, 15, 1, 11.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (38, 11, 1, 8.50, '0% sugar');

-- Order 39 (Cust 20, Texas Chicken): Spicy Chicken(21) + Chicken Tender(22) + Honey Biscuit(23)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (39, 21, 1, 14.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (39, 22, 1, 12.50, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (39, 23, 2, 4.90, NULL);

-- Order 40 (Cust 20, Din Tai Fung): Wonton Soup(18) + Hot and Sour Soup(20)
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (40, 18, 1, 18.90, NULL);
INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price, remark) VALUES (40, 20, 1, 14.90, 'Extra hot');

-- 20. PAYMENT (40 payments for 40 orders)
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (1, 50.30, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (2, 27.90, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (3, 59.80, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (4, 85.30, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (5, 27.40, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (6, 34.40, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (7, 45.30, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (8, 25.30, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (9, 40.40, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (10, 44.60, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (11, 24.90, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (12, 82.80, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (13, 25.00, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (14, 23.90, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (15, 48.80, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (16, 43.90, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (17, 31.80, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (18, 36.30, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (19, 46.60, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (20, 39.00, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (21, 27.40, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (22, 55.40, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (23, 27.30, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (24, 34.60, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (25, 52.80, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (26, 28.30, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (27, 48.30, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (28, 24.40, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (29, 30.50, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (30, 51.30, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (31, 50.30, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (32, 61.70, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (33, 31.90, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (34, 25.80, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (35, 80.30, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (36, 27.00, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (37, 30.50, 'E-Wallet', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (38, 20.00, 'Online Banking', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (39, 42.20, 'Credit Card', 'Completed');
INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status) VALUES (40, 38.80, 'E-Wallet', 'Completed');

-- 21. COIN_TRANSACTION (1 per order = 40 transactions)
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (1, 1, 50);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (1, 2, 27);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (2, 3, 59);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (2, 4, -100);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (3, 5, 27);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (3, 6, -50);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (4, 7, 45);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (4, 8, 25);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (5, 9, 40);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (5, 10, 44);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (6, 11, 24);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (6, 12, 82);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (7, 13, 25);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (7, 14, 23);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (8, 15, 48);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (8, 16, 43);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (9, 17, 31);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (9, 18, 36);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (10, 19, 46);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (10, 20, 39);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (11, 21, 27);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (11, 22, 55);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (12, 23, 27);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (12, 24, 34);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (13, 25, 52);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (13, 26, 28);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (14, 27, 48);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (14, 28, 24);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (15, 29, 30);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (15, 30, 51);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (16, 31, 50);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (16, 32, 61);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (17, 33, 31);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (17, 34, 25);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (18, 35, 80);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (18, 36, 27);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (19, 37, 30);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (19, 38, 20);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (20, 39, 42);
INSERT INTO COIN_TRANSACTION (wallet_id, order_id, coin_changes) VALUES (20, 40, 38);

COMMIT;