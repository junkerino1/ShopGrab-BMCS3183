CREATE SEQUENCE customer_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE category_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE platform_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE tier_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE plan_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE restaurant_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE rider_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE subscription_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE coin_wallet_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE benefit_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE owner_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE item_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE sub_payment_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE voucher_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE voucher_wallet_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE order_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE order_details_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE payment_seq START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE transaction_seq START WITH 1 INCREMENT BY 1 NOCACHE;

-- Create Tables
CREATE TABLE CUSTOMER (
    customer_id NUMBER PRIMARY KEY,
    email VARCHAR2(100) NOT NULL UNIQUE,
    username VARCHAR2(50) NOT NULL UNIQUE,
    password VARCHAR2(255) NOT NULL,
    phone_no VARCHAR2(15) NOT NULL,
    default_address VARCHAR2(255),
    created_at DATE DEFAULT SYSDATE NOT NULL
);

CREATE TABLE RESTAURANT_CATEGORY (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR2(50) NOT NULL
);

CREATE TABLE PLATFORM (
    platform_id NUMBER PRIMARY KEY,
    platform_name VARCHAR2(50) NOT NULL,
    rider_count NUMBER DEFAULT 0 NOT NULL
);

CREATE TABLE LOYALTY_TIER (
    tier_id NUMBER PRIMARY KEY,
    tier_name VARCHAR2(20) NOT NULL CHECK (tier_name IN ('Silver', 'Gold', 'Diamond')),
    min_total_spend NUMBER(8,2) DEFAULT 0 NOT NULL
);

CREATE TABLE SUB_PLAN (
    plan_id NUMBER PRIMARY KEY,
    plan_name VARCHAR2(50) NOT NULL,
    price NUMBER(6,2) NOT NULL CHECK (price >= 0),
    duration NUMBER(3) NOT NULL 
);

CREATE TABLE RESTAURANT (
    restaurant_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    description VARCHAR2(255),
    halal_status CHAR(1) DEFAULT 'N' CHECK (halal_status IN ('Y', 'N')),
    rating NUMBER(3,2) DEFAULT 0 CHECK (rating BETWEEN 0 AND 5),
    location VARCHAR2(100) NOT NULL,
    address VARCHAR2(255) NOT NULL,
    phone VARCHAR2(15) NOT NULL,
    opening_time VARCHAR2(5), 
    closing_time VARCHAR2(5)
);

CREATE TABLE RIDER (
    rider_id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    identification_no VARCHAR2(20) NOT NULL UNIQUE,
    phone_no VARCHAR2(15) NOT NULL,
    platform_id NUMBER NOT NULL,
    license_plate VARCHAR2(10) NOT NULL UNIQUE,
    ongoing_delivery NUMBER DEFAULT 0 NOT NULL,
    status VARCHAR2(20) DEFAULT 'Available' CHECK (status IN ('Available', 'Busy', 'Offline')),
    CONSTRAINT fk_rider_platform FOREIGN KEY (platform_id) REFERENCES PLATFORM(platform_id)
);

CREATE TABLE SUBSCRIPTION (
    subscription_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    plan_id NUMBER NOT NULL,
    start_date DATE DEFAULT SYSDATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR2(20) DEFAULT 'Active' CHECK (status IN ('Active', 'Expired', 'Pending')),
    CONSTRAINT fk_subscription_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE,
    CONSTRAINT fk_subscription_plan FOREIGN KEY (plan_id) REFERENCES SUB_PLAN(plan_id)
);

CREATE TABLE COIN_WALLET (
    wallet_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL UNIQUE, 
    total_coins NUMBER(8) DEFAULT 0 NOT NULL CHECK (total_coins >= 0),
    CONSTRAINT fk_coin_wallet_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE
);

CREATE TABLE C_LOYALTY (
    customer_id NUMBER PRIMARY KEY, 
    tier_id NUMBER DEFAULT 1 NOT NULL, 
    total_spent NUMBER(8,2) DEFAULT 0 NOT NULL CHECK (total_spent >= 0),
    last_updated DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT fk_c_loyalty_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE,
    CONSTRAINT fk_c_loyalty_tier FOREIGN KEY (tier_id) REFERENCES LOYALTY_TIER(tier_id)
);

CREATE TABLE L_BENEFIT (
    benefit_id NUMBER PRIMARY KEY,
    tier_id NUMBER NOT NULL,
    benefit_type VARCHAR2(50) NOT NULL,
    benefit_value NUMBER(6,2) NOT NULL,
    description VARCHAR2(255),
    CONSTRAINT fk_l_benefit_tier FOREIGN KEY (tier_id) REFERENCES LOYALTY_TIER(tier_id)
);

CREATE TABLE OWNER (
    owner_id NUMBER PRIMARY KEY,
    restaurant_id NUMBER NOT NULL UNIQUE, 
    email VARCHAR2(100) NOT NULL UNIQUE,
    username VARCHAR2(50) NOT NULL UNIQUE,
    password VARCHAR2(255) NOT NULL,
    phone_no VARCHAR2(15) NOT NULL,
    created_at DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT fk_owner_restaurant FOREIGN KEY (restaurant_id) REFERENCES RESTAURANT(restaurant_id) ON DELETE CASCADE
);

CREATE TABLE RESTAURANT_CATEGORY_MAP (
    restaurant_id NUMBER NOT NULL,
    category_id NUMBER NOT NULL,
    PRIMARY KEY (restaurant_id, category_id),
    CONSTRAINT fk_rest_cat_map_restaurant FOREIGN KEY (restaurant_id) REFERENCES RESTAURANT(restaurant_id) ON DELETE CASCADE,
    CONSTRAINT fk_rest_cat_map_category FOREIGN KEY (category_id) REFERENCES RESTAURANT_CATEGORY(category_id)
);

CREATE TABLE MENU_ITEM (
    item_id NUMBER PRIMARY KEY,
    restaurant_id NUMBER NOT NULL,
    name VARCHAR2(100) NOT NULL,
    description VARCHAR2(255),
    price NUMBER(6,2) NOT NULL CHECK (price >= 0),
    item_type VARCHAR2(20) NOT NULL,
    is_available CHAR(1) DEFAULT 'Y' CHECK (is_available IN ('Y', 'N')),
    is_budget CHAR(1) DEFAULT 'N' CHECK (is_budget IN ('Y', 'N')),
    is_super_deal CHAR(1) DEFAULT 'N' CHECK (is_super_deal IN ('Y', 'N')),
    CONSTRAINT fk_menu_item_restaurant FOREIGN KEY (restaurant_id) REFERENCES RESTAURANT(restaurant_id) ON DELETE CASCADE
);

CREATE TABLE SUB_PAYMENT (
    payment_id NUMBER PRIMARY KEY,
    subscription_id NUMBER NOT NULL,
    amount NUMBER(6,2) NOT NULL CHECK (amount >= 0),
    payment_method VARCHAR2(50) NOT NULL,
    payment_status VARCHAR2(20) DEFAULT 'Completed' NOT NULL,
    created_at DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT fk_sub_payment_subscription FOREIGN KEY (subscription_id) REFERENCES SUBSCRIPTION(subscription_id) ON DELETE CASCADE
);

CREATE TABLE VOUCHER (
    voucher_id NUMBER PRIMARY KEY,
    voucher_code VARCHAR2(20) NOT NULL UNIQUE,
    min_spend NUMBER(6,2) DEFAULT 0 NOT NULL,
    max_amount NUMBER(6,2),
    category_id NUMBER,
    restaurant_id NUMBER,
    voucher_type VARCHAR2(20) NOT NULL,
    distribution_type VARCHAR2(20) NOT NULL,
    benefit_type VARCHAR2(20) NOT NULL,
    valid_start DATE NOT NULL,
    valid_end DATE NOT NULL,
    usage_limit NUMBER(5),
    status VARCHAR2(20) DEFAULT 'Active' CHECK (status IN ('Active', 'Expired', 'Redeemed')),
    CONSTRAINT fk_voucher_category FOREIGN KEY (category_id) REFERENCES RESTAURANT_CATEGORY(category_id),
    CONSTRAINT fk_voucher_restaurant FOREIGN KEY (restaurant_id) REFERENCES RESTAURANT(restaurant_id)
);

CREATE TABLE VOUCHER_WALLET (
    wallet_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    voucher_id NUMBER NOT NULL,
    is_used CHAR(1) DEFAULT 'N' CHECK (is_used IN ('Y', 'N')),
    created_at DATE DEFAULT SYSDATE NOT NULL,
    used_at DATE,
    CONSTRAINT fk_voucher_wallet_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE,
    CONSTRAINT fk_voucher_wallet_voucher FOREIGN KEY (voucher_id) REFERENCES VOUCHER(voucher_id)
);

CREATE TABLE CUST_ORDER (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    restaurant_id NUMBER NOT NULL,
    platform_id NUMBER,
    rider_id NUMBER,
    order_datetime DATE DEFAULT SYSDATE NOT NULL,
    voucher_id NUMBER,
    coin_used NUMBER(6) DEFAULT 0 NOT NULL CHECK (coin_used >= 0),
    delivery_fee NUMBER(6,2) DEFAULT 0 NOT NULL CHECK (delivery_fee >= 0),
    order_status VARCHAR2(20) DEFAULT 'Pending' NOT NULL,
    delivery_address VARCHAR2(255),
    payment_status VARCHAR2(20) DEFAULT 'Unpaid' NOT NULL,
    order_type CHAR(1) NOT NULL CHECK (order_type IN ('D', 'P')), 
    CONSTRAINT fk_cust_order_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE,
    CONSTRAINT fk_cust_order_restaurant FOREIGN KEY (restaurant_id) REFERENCES RESTAURANT(restaurant_id),
    CONSTRAINT fk_cust_order_platform FOREIGN KEY (platform_id) REFERENCES PLATFORM(platform_id),
    CONSTRAINT fk_cust_order_rider FOREIGN KEY (rider_id) REFERENCES RIDER(rider_id),
    CONSTRAINT fk_cust_order_voucher FOREIGN KEY (voucher_id) REFERENCES VOUCHER(voucher_id),
    CONSTRAINT chk_order_pickup CHECK (
        (order_type = 'P' AND rider_id IS NULL AND platform_id IS NULL AND delivery_fee = 0) OR 
        (order_type = 'D')
    )
);

CREATE TABLE ORDER_DETAILS (
    order_details_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL,
    menu_item_id NUMBER NOT NULL,
    quantity NUMBER(3) NOT NULL CHECK (quantity > 0),
    unit_price NUMBER(6,2) NOT NULL CHECK (unit_price >= 0),
    remark VARCHAR2(255),
    CONSTRAINT fk_order_details_order FOREIGN KEY (order_id) REFERENCES CUST_ORDER(order_id) ON DELETE CASCADE,
    CONSTRAINT fk_order_details_menu_item FOREIGN KEY (menu_item_id) REFERENCES MENU_ITEM(item_id)
);

CREATE TABLE PAYMENT (
    payment_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL UNIQUE, 
    amount_paid NUMBER(8,2) NOT NULL CHECK (amount_paid >= 0),
    payment_method VARCHAR2(50) NOT NULL,
    payment_status VARCHAR2(20) DEFAULT 'Completed' NOT NULL,
    created_at DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT fk_payment_order FOREIGN KEY (order_id) REFERENCES CUST_ORDER(order_id) ON DELETE CASCADE
);

CREATE TABLE COIN_TRANSACTION (
    transaction_id NUMBER PRIMARY KEY,
    wallet_id NUMBER NOT NULL,
    order_id NUMBER,
    coin_changes NUMBER(6) NOT NULL, 
    transaction_date DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT fk_coin_trans_wallet FOREIGN KEY (wallet_id) REFERENCES COIN_WALLET(wallet_id) ON DELETE CASCADE,
    CONSTRAINT fk_coin_trans_order FOREIGN KEY (order_id) REFERENCES CUST_ORDER(order_id) ON DELETE SET NULL
);

-- Create Triggers for Auto-increment (Oracle 11.2 compatible)
CREATE OR REPLACE TRIGGER trg_customer_id BEFORE INSERT ON CUSTOMER FOR EACH ROW
BEGIN
    IF :NEW.customer_id IS NULL THEN
        SELECT customer_seq.NEXTVAL INTO :NEW.customer_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_category_id BEFORE INSERT ON RESTAURANT_CATEGORY FOR EACH ROW
BEGIN
    IF :NEW.category_id IS NULL THEN
        SELECT category_seq.NEXTVAL INTO :NEW.category_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_platform_id BEFORE INSERT ON PLATFORM FOR EACH ROW
BEGIN
    IF :NEW.platform_id IS NULL THEN
        SELECT platform_seq.NEXTVAL INTO :NEW.platform_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_tier_id BEFORE INSERT ON LOYALTY_TIER FOR EACH ROW
BEGIN
    IF :NEW.tier_id IS NULL THEN
        SELECT tier_seq.NEXTVAL INTO :NEW.tier_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_plan_id BEFORE INSERT ON SUB_PLAN FOR EACH ROW
BEGIN
    IF :NEW.plan_id IS NULL THEN
        SELECT plan_seq.NEXTVAL INTO :NEW.plan_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_restaurant_id BEFORE INSERT ON RESTAURANT FOR EACH ROW
BEGIN
    IF :NEW.restaurant_id IS NULL THEN
        SELECT restaurant_seq.NEXTVAL INTO :NEW.restaurant_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_rider_id BEFORE INSERT ON RIDER FOR EACH ROW
BEGIN
    IF :NEW.rider_id IS NULL THEN
        SELECT rider_seq.NEXTVAL INTO :NEW.rider_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_subscription_id BEFORE INSERT ON SUBSCRIPTION FOR EACH ROW
BEGIN
    IF :NEW.subscription_id IS NULL THEN
        SELECT subscription_seq.NEXTVAL INTO :NEW.subscription_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_coin_wallet_id BEFORE INSERT ON COIN_WALLET FOR EACH ROW
BEGIN
    IF :NEW.wallet_id IS NULL THEN
        SELECT coin_wallet_seq.NEXTVAL INTO :NEW.wallet_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_benefit_id BEFORE INSERT ON L_BENEFIT FOR EACH ROW
BEGIN
    IF :NEW.benefit_id IS NULL THEN
        SELECT benefit_seq.NEXTVAL INTO :NEW.benefit_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_owner_id BEFORE INSERT ON OWNER FOR EACH ROW
BEGIN
    IF :NEW.owner_id IS NULL THEN
        SELECT owner_seq.NEXTVAL INTO :NEW.owner_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_item_id BEFORE INSERT ON MENU_ITEM FOR EACH ROW
BEGIN
    IF :NEW.item_id IS NULL THEN
        SELECT item_seq.NEXTVAL INTO :NEW.item_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_sub_payment_id BEFORE INSERT ON SUB_PAYMENT FOR EACH ROW
BEGIN
    IF :NEW.payment_id IS NULL THEN
        SELECT sub_payment_seq.NEXTVAL INTO :NEW.payment_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_voucher_id BEFORE INSERT ON VOUCHER FOR EACH ROW
BEGIN
    IF :NEW.voucher_id IS NULL THEN
        SELECT voucher_seq.NEXTVAL INTO :NEW.voucher_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_voucher_wallet_id BEFORE INSERT ON VOUCHER_WALLET FOR EACH ROW
BEGIN
    IF :NEW.wallet_id IS NULL THEN
        SELECT voucher_wallet_seq.NEXTVAL INTO :NEW.wallet_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_order_id BEFORE INSERT ON CUST_ORDER FOR EACH ROW
BEGIN
    IF :NEW.order_id IS NULL THEN
        SELECT order_seq.NEXTVAL INTO :NEW.order_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_order_details_id BEFORE INSERT ON ORDER_DETAILS FOR EACH ROW
BEGIN
    IF :NEW.order_details_id IS NULL THEN
        SELECT order_details_seq.NEXTVAL INTO :NEW.order_details_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_payment_id BEFORE INSERT ON PAYMENT FOR EACH ROW
BEGIN
    IF :NEW.payment_id IS NULL THEN
        SELECT payment_seq.NEXTVAL INTO :NEW.payment_id FROM DUAL;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_transaction_id BEFORE INSERT ON COIN_TRANSACTION FOR EACH ROW
BEGIN
    IF :NEW.transaction_id IS NULL THEN
        SELECT transaction_seq.NEXTVAL INTO :NEW.transaction_id FROM DUAL;
    END IF;
END;
/

-- ============================================================
-- GLOBAL TEMPORARY TABLE: TEMP_CART
-- Stores cart items for the current session only.
-- Rows are automatically discarded when the session ends.
-- NOTE: GTTs do not support foreign key constraints.
-- ============================================================
CREATE GLOBAL TEMPORARY TABLE TEMP_CART (
    cart_item_id   NUMBER          NOT NULL,
    item_id        NUMBER          NOT NULL,
    restaurant_id  NUMBER          NOT NULL,
    item_name      VARCHAR2(100)   NOT NULL,
    unit_price     NUMBER(6,2)     NOT NULL,
    quantity       NUMBER(3)       DEFAULT 1 NOT NULL CHECK (quantity > 0),
    subtotal       NUMBER(8,2)     NOT NULL,
    remark         VARCHAR2(255),
    added_at       DATE            DEFAULT SYSDATE NOT NULL,
    CONSTRAINT pk_temp_cart PRIMARY KEY (cart_item_id)
) ON COMMIT PRESERVE ROWS;