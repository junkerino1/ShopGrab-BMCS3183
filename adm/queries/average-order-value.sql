SET SERVEROUTPUT ON
DECLARE

    v_tierName    LOYALTY_TIER.tier_name%TYPE;
    v_tierTotal   NUMBER(10,2);
    v_tierCount   NUMBER;
    v_grandTotal  NUMBER(10,2) := 0;
    v_grandCount  NUMBER := 0;

    CURSOR tierCursor IS
        SELECT tier_id, tier_name
        FROM LOYALTY_TIER
        ORDER BY 
            CASE tier_name 
                WHEN 'Diamond' THEN 1 
                WHEN 'Gold'    THEN 2 
                WHEN 'Silver'  THEN 3 
            END;

    CURSOR custCursor (p_tier_id NUMBER) IS
        SELECT 
            c.customer_id,
            c.username,
            COUNT(o.order_id) AS total_orders,
            AVG(p.amount_paid) AS avg_order_value
        FROM CUSTOMER c
        JOIN C_LOYALTY cl ON c.customer_id = cl.customer_id
        JOIN CUST_ORDER o ON c.customer_id = o.customer_id
        JOIN PAYMENT p ON o.order_id = p.order_id
        WHERE cl.tier_id = p_tier_id
        GROUP BY c.customer_id, c.username
        ORDER BY avg_order_value DESC;

    tierRec  tierCursor%ROWTYPE;
    custRec  custCursor%ROWTYPE;

BEGIN

    OPEN tierCursor;

    LOOP
        FETCH tierCursor INTO tierRec;
        EXIT WHEN tierCursor%NOTFOUND;

        -- TIER HEADER
        DBMS_OUTPUT.PUT_LINE(LPAD('=', 95, '='));
        DBMS_OUTPUT.PUT_LINE(CHR(10));
        DBMS_OUTPUT.PUT_LINE('LOYALTY TIER: ' || tierRec.tier_name);
        DBMS_OUTPUT.PUT_LINE(CHR(10));
        DBMS_OUTPUT.PUT_LINE(LPAD('=', 95, '='));

        -- COLUMN HEADING
        DBMS_OUTPUT.PUT_LINE(
            RPAD('ID',    6,  ' ') || ' ' ||
            RPAD('USERNAME',   15, ' ') || ' ' ||
            RPAD('ORDERS',     8,  ' ') || ' ' ||
            RPAD('AVG VALUE',  15, ' '));
        DBMS_OUTPUT.PUT_LINE(LPAD('-', 95, '-'));

        -- BODY
        OPEN custCursor(tierRec.tier_id);
        v_tierTotal := 0;
        v_tierCount := 0;

        LOOP
            FETCH custCursor INTO custRec;
            EXIT WHEN custCursor%NOTFOUND;

            DBMS_OUTPUT.PUT_LINE(
                RPAD(custRec.customer_id, 6, ' ')  || ' ' ||
                RPAD(custRec.username,    15, ' ') || ' ' ||
                RPAD(custRec.total_orders, 8, ' ') || ' ' ||
                RPAD(TO_CHAR(custRec.avg_order_value, '$999,999.99'), 15, ' '));

            v_tierTotal := v_tierTotal + custRec.avg_order_value;
            v_tierCount := v_tierCount + 1;

        END LOOP;

        CLOSE custCursor;

        -- TIER FOOTER
        DBMS_OUTPUT.PUT_LINE(LPAD('-', 95, '-'));

        IF v_tierCount > 0 THEN
            DBMS_OUTPUT.PUT_LINE('TIER AVG ORDER VALUE: ' || TO_CHAR(v_tierTotal / v_tierCount, '$999,999.99'));
        ELSE
            DBMS_OUTPUT.PUT_LINE('NO CUSTOMERS FOUND IN THIS TIER');
        END IF;

        DBMS_OUTPUT.PUT_LINE('TOTAL CUSTOMERS: ' || v_tierCount);
        DBMS_OUTPUT.PUT_LINE(LPAD('=', 95, '='));
        DBMS_OUTPUT.PUT_LINE(CHR(10));
        DBMS_OUTPUT.PUT_LINE(CHR(10));

        v_grandTotal := v_grandTotal + v_tierTotal;
        v_grandCount := v_grandCount + v_tierCount;

    END LOOP;

    CLOSE tierCursor;

    -- REPORT FOOTER
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 95, '='));
    IF v_grandCount > 0 THEN
        DBMS_OUTPUT.PUT_LINE('OVERALL AVG ORDER VALUE: ' || TO_CHAR(v_grandTotal / v_grandCount, '$999,999.99'));
    END IF;
    DBMS_OUTPUT.PUT_LINE('TOTAL CUSTOMERS: ' || v_grandCount);
    DBMS_OUTPUT.PUT_LINE('TOTAL TIERS: ' || tierCursor%ROWCOUNT);
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 40, '=') || RPAD(' END OF REPORT ', 55, '='));

END;
/
