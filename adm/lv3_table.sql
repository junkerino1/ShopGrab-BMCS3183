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
VALUES (1, 1, 1, 1, NULL, 0, 5.00, 'Pending', '123 Jalan Ampang, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (1, 3, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');

-- Customer 2: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (2, 2, 2, 11, NULL, 0, 5.00, 'Pending', '45 Jalan Cheras, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (2, 4, 1, 2, NULL, 0, 5.00, 'Pending', '45 Jalan Cheras, KL', 'Paid', 'D');

-- Customer 3: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (3, 5, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (3, 1, 2, 12, NULL, 0, 5.00, 'Pending', '78 Jalan Genting, KL', 'Paid', 'D');

-- Customer 4: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (4, 2, 1, 3, NULL, 0, 5.00, 'Pending', '10 Jalan Tun Razak, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (4, 3, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');

-- Customer 5: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (5, 4, 2, 13, NULL, 0, 5.00, 'Pending', '55 Jalan Bukit Bintang, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (5, 5, 1, 4, NULL, 0, 5.00, 'Pending', '55 Jalan Bukit Bintang, KL', 'Paid', 'D');

-- Customer 6: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (6, 1, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (6, 2, 1, 5, NULL, 0, 5.00, 'Pending', '32 Jalan Bangsar, KL', 'Paid', 'D');

-- Customer 7: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (7, 3, 2, 14, NULL, 0, 5.00, 'Pending', '18 Jalan Setapak, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (7, 5, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');

-- Customer 8: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (8, 4, 1, 6, NULL, 0, 5.00, 'Pending', '67 Jalan Kepong, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (8, 1, 2, 15, NULL, 0, 5.00, 'Pending', '67 Jalan Kepong, KL', 'Paid', 'D');

-- Customer 9: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (9, 2, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (9, 3, 1, 7, NULL, 0, 5.00, 'Pending', '41 Jalan Puchong, Selangor', 'Paid', 'D');

-- Customer 10: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (10, 5, 2, 16, NULL, 0, 5.00, 'Pending', '29 Jalan PJ, Selangor', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (10, 4, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');

-- Customer 11: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (11, 1, 1, 8, NULL, 0, 5.00, 'Pending', '14 Jalan Subang, Selangor', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (11, 2, 2, 17, NULL, 0, 5.00, 'Pending', '14 Jalan Subang, Selangor', 'Paid', 'D');

-- Customer 12: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (12, 3, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (12, 5, 1, 9, NULL, 0, 5.00, 'Pending', '60 Jalan Damansara, KL', 'Paid', 'D');

-- Customer 13: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (13, 4, 2, 18, NULL, 0, 5.00, 'Pending', '8 Jalan Mont Kiara, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (13, 1, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');

-- Customer 14: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (14, 2, 1, 10, NULL, 0, 5.00, 'Pending', '73 Jalan Sri Hartamas, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (14, 3, 2, 19, NULL, 0, 5.00, 'Pending', '73 Jalan Sri Hartamas, KL', 'Paid', 'D');

-- Customer 15: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (15, 5, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (15, 4, 1, 1, NULL, 0, 5.00, 'Pending', '22 Jalan Desa Pandan, KL', 'Paid', 'D');

-- Customer 16: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (16, 1, 2, 11, NULL, 0, 5.00, 'Pending', '39 Jalan Wangsa Maju, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (16, 2, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');

-- Customer 17: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (17, 3, 1, 2, NULL, 0, 5.00, 'Pending', '51 Jalan Sentul, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (17, 5, 2, 12, NULL, 0, 5.00, 'Pending', '51 Jalan Sentul, KL', 'Paid', 'D');

-- Customer 18: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (18, 4, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (18, 1, 1, 3, NULL, 0, 5.00, 'Pending', '16 Jalan Titiwangsa, KL', 'Paid', 'D');

-- Customer 19: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (19, 2, 2, 13, NULL, 0, 5.00, 'Pending', '44 Jalan Segambut, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (19, 3, NULL, NULL, NULL, 0, 0.00, 'Pending', NULL, 'Paid', 'P');

-- Customer 20: 2 orders
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (20, 5, 1, 4, NULL, 0, 5.00, 'Pending', '7 Jalan Loke Yew, KL', 'Paid', 'D');
INSERT INTO CUST_ORDER (customer_id, restaurant_id, platform_id, rider_id, voucher_id, coin_used, delivery_fee, order_status, delivery_address, payment_status, order_type)
VALUES (20, 4, 2, 14, NULL, 0, 5.00, 'Pending', '7 Jalan Loke Yew, KL', 'Paid', 'D');
