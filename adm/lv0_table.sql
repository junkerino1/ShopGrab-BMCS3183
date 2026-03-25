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

COMMIT;