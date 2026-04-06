
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

COMMIT;