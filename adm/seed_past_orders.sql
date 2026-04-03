DECLARE
    v_order_id NUMBER;
    v_cust NUMBER;
    v_rest NUMBER;
    v_plat NUMBER;
    v_rider NUMBER;
    v_item NUMBER;
    v_date DATE;
BEGIN
    FOR i IN 1..50 LOOP
        -- Randomize valid FK IDs based on dummy_data mapping
        v_cust := TRUNC(DBMS_RANDOM.VALUE(1, 21));  -- Random customer (1 to 20)
        v_rest := TRUNC(DBMS_RANDOM.VALUE(1, 6));   -- Random restaurant (1 to 5)
        v_plat := TRUNC(DBMS_RANDOM.VALUE(1, 3));   -- Random platform (1 to 2)
        v_rider := TRUNC(DBMS_RANDOM.VALUE(1, 21)); -- Random rider (1 to 20)
        
        -- Random date between 35 and 105 days ago (strictly > 1 month)
        v_date := SYSDATE - DBMS_RANDOM.VALUE(0, 90); 

        -- 1. Insert CUST_ORDER
        INSERT INTO CUST_ORDER (
            customer_id, restaurant_id, platform_id, rider_id, 
            order_datetime, delivery_fee, order_status, 
            delivery_address, payment_status, order_type
        )
        VALUES (
            v_cust, v_rest, v_plat, v_rider, 
            v_date, 5.00, 'Pending', 
            '123 Simulated Past Street', 'Paid', 'D'
        )
        RETURNING order_id INTO v_order_id;
        
        -- 2. Pick a valid MENU_ITEM for the specific restaurant
        -- (Since Restaurant 1 has items 1-5, Res 2 has 6-10, etc.)
        v_item := (v_rest - 1) * 5 + TRUNC(DBMS_RANDOM.VALUE(1, 6));

        -- Insert ORDER_DETAILS
        INSERT INTO ORDER_DETAILS (order_id, menu_item_id, quantity, unit_price)
        VALUES (v_order_id, v_item, 2, 15.00);
        
        -- 3. Insert matching PAYMENT
        INSERT INTO PAYMENT (order_id, amount_paid, payment_method, payment_status, created_at)
        VALUES (v_order_id, 35.00, 'Online Banking', 'Completed', v_date);
        
    END LOOP;
    
    -- Ensure some customers actually have > 100 coins to make the retention report pop cleanly
    -- Randomly give 150 coins to 5 select users if they happen to not have them.
    UPDATE COIN_WALLET 
    SET total_coins = 150 
    WHERE customer_id IN (2, 5, 8, 11, 14);

    COMMIT;
END;
/
