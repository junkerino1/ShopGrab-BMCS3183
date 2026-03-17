
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