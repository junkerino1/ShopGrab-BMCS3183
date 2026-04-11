
-- 7. C_LOYALTY (20 customers, mix of tiers)
UPDATE C_LOYALTY SET total_spent = 120.00  WHERE customer_id = 1;
UPDATE C_LOYALTY SET total_spent = 650.00  WHERE customer_id = 2;
UPDATE C_LOYALTY SET total_spent = 1200.00 WHERE customer_id = 3;
UPDATE C_LOYALTY SET total_spent = 80.00   WHERE customer_id = 4;
UPDATE C_LOYALTY SET total_spent = 200.00  WHERE customer_id = 5;
UPDATE C_LOYALTY SET total_spent = 550.00  WHERE customer_id = 6;
UPDATE C_LOYALTY SET total_spent = 45.00   WHERE customer_id = 7;
UPDATE C_LOYALTY SET total_spent = 310.00  WHERE customer_id = 8;
UPDATE C_LOYALTY SET total_spent = 700.00  WHERE customer_id = 9;
UPDATE C_LOYALTY SET total_spent = 1500.00 WHERE customer_id = 10;
UPDATE C_LOYALTY SET total_spent = 90.00   WHERE customer_id = 11;
UPDATE C_LOYALTY SET total_spent = 150.00  WHERE customer_id = 12;
UPDATE C_LOYALTY SET total_spent = 520.00  WHERE customer_id = 13;
UPDATE C_LOYALTY SET total_spent = 60.00   WHERE customer_id = 14;
UPDATE C_LOYALTY SET total_spent = 275.00  WHERE customer_id = 15;
UPDATE C_LOYALTY SET total_spent = 1100.00 WHERE customer_id = 16;
UPDATE C_LOYALTY SET total_spent = 30.00   WHERE customer_id = 17;
UPDATE C_LOYALTY SET total_spent = 600.00  WHERE customer_id = 18;
UPDATE C_LOYALTY SET total_spent = 180.00  WHERE customer_id = 19;
UPDATE C_LOYALTY SET total_spent = 400.00  WHERE customer_id = 20;

-- 8. COIN_WALLET (20 customers)
UPDATE COIN_WALLET SET total_coins = 500  WHERE customer_id = 1;
UPDATE COIN_WALLET SET total_coins = 1200 WHERE customer_id = 2;
UPDATE COIN_WALLET SET total_coins = 2500 WHERE customer_id = 3;
UPDATE COIN_WALLET SET total_coins = 150  WHERE customer_id = 4;
UPDATE COIN_WALLET SET total_coins = 400  WHERE customer_id = 5;
UPDATE COIN_WALLET SET total_coins = 900  WHERE customer_id = 6;
UPDATE COIN_WALLET SET total_coins = 80   WHERE customer_id = 7;
UPDATE COIN_WALLET SET total_coins = 600  WHERE customer_id = 8;
UPDATE COIN_WALLET SET total_coins = 1400 WHERE customer_id = 9;
UPDATE COIN_WALLET SET total_coins = 3000 WHERE customer_id = 10;
UPDATE COIN_WALLET SET total_coins = 200  WHERE customer_id = 11;
UPDATE COIN_WALLET SET total_coins = 350  WHERE customer_id = 12;
UPDATE COIN_WALLET SET total_coins = 1000 WHERE customer_id = 13;
UPDATE COIN_WALLET SET total_coins = 100  WHERE customer_id = 14;
UPDATE COIN_WALLET SET total_coins = 550  WHERE customer_id = 15;
UPDATE COIN_WALLET SET total_coins = 2200 WHERE customer_id = 16;
UPDATE COIN_WALLET SET total_coins = 50   WHERE customer_id = 17;
UPDATE COIN_WALLET SET total_coins = 1100 WHERE customer_id = 18;
UPDATE COIN_WALLET SET total_coins = 370  WHERE customer_id = 19;
UPDATE COIN_WALLET SET total_coins = 800  WHERE customer_id = 20;

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
VALUES ('Kamal Arif', '880303-14-1122', '0129998883', 1, 'WAC3456', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Hafiz Noor', '950420-08-3344', '0129998884', 1, 'WAD4567', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Zul Iskandar', '870512-14-5500', '0129998885', 1, 'WAE5678', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Faizal Rahman', '930630-10-6677', '0129998886', 1, 'WAF6789', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Amir Syafiq', '960718-14-8899', '0129998887', 1, 'WAG7890', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Danish Hakim', '940825-08-0011', '0129998888', 1, 'WAH8901', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Izzat Faris', '890905-14-2233', '0129998889', 1, 'WAI9012', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Shahrul Nizam', '920110-10-4455', '0129998890', 1, 'WAJ0123', 'Available');

-- FoodPanda riders (platform_id = 2)
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Muthu Samy', '880202-10-1234', '0137776661', 2, 'VBB5678', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Raj Kumar', '910315-10-5678', '0137776662', 2, 'VBC6789', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Wei Liang', '870428-14-9012', '0137776663', 2, 'VBD7890', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Chong Hao', '950510-08-3456', '0137776664', 2, 'VBE8901', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Arjun Nair', '930622-10-7890', '0137776665', 2, 'VBF9012', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Bala Ganesh', '860708-14-1234', '0137776666', 2, 'VBG0123', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Tan Jun Wei', '940815-08-5678', '0137776667', 2, 'VBH1234', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Lim Kah Heng', '890920-14-9012', '0137776668', 2, 'VBI2345', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Suresh Rajan', '920105-10-3456', '0137776669', 2, 'VBJ3456', 'Available');
INSERT INTO RIDER (name, identification_no, phone_no, platform_id, license_plate, status)
VALUES ('Vino Kumar', '960218-14-7890', '0137776670', 2, 'VBK4567', 'Available');

-- Sync rider_count in PLATFORM based on inserted rider data
UPDATE PLATFORM p
SET rider_count = (SELECT COUNT(*) FROM RIDER r WHERE r.platform_id = p.platform_id);

-- 11. SUBSCRIPTION (8 customers subscribed)
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (2, 1, SYSDATE - 20, SYSDATE + 10, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (3, 1, SYSDATE - 25, SYSDATE + 5, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (6, 1, SYSDATE - 15, SYSDATE + 15, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (9, 1, SYSDATE - 10, SYSDATE + 20, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (10, 1, SYSDATE - 5, SYSDATE + 25, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (13, 1, SYSDATE - 12, SYSDATE + 18, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (16, 1, SYSDATE - 8, SYSDATE + 12, 'Active');
INSERT INTO SUBSCRIPTION (customer_id, plan_id, start_date, end_date, status)
VALUES (18, 1, SYSDATE - 3, SYSDATE + 27, 'Active');

COMMIT;