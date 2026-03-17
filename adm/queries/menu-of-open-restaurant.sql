SET SERVEROUTPUT ON
DECLARE

    v_currentTime VARCHAR2(5) := '15:00'; -- Change this to test, or use TO_CHAR(SYSDATE, 'HH24:MI')

    CURSOR restCursor IS
        SELECT restaurant_id, name, halal_status, location, opening_time, closing_time
        FROM RESTAURANT
        WHERE v_currentTime BETWEEN opening_time AND closing_time
        ORDER BY name;

    CURSOR menuCursor (p_restaurant_id NUMBER) IS
        SELECT item_id, name, description, price, item_type, is_budget, is_super_deal
        FROM MENU_ITEM
        WHERE restaurant_id = p_restaurant_id
          AND is_available = 'Y'
        ORDER BY item_type, price;

    restRec   restCursor%ROWTYPE;
    menuRec   menuCursor%ROWTYPE;
    v_restCount  NUMBER := 0;
    v_itemCount  NUMBER;

BEGIN

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));
    DBMS_OUTPUT.PUT_LINE('MENU OF OPEN RESTAURANTS (Time: ' || v_currentTime || ')');
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));
    DBMS_OUTPUT.PUT_LINE(CHR(10));

    OPEN restCursor;

    LOOP
        FETCH restCursor INTO restRec;
        EXIT WHEN restCursor%NOTFOUND;

        v_restCount := v_restCount + 1;

        -- RESTAURANT HEADER
        DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));
        DBMS_OUTPUT.PUT_LINE(CHR(10));
        DBMS_OUTPUT.PUT_LINE('RESTAURANT: ' || restRec.name || '   |   Halal: ' || restRec.halal_status || 
                             '   |   Location: ' || restRec.location ||
                             '   |   Hours: ' || restRec.opening_time || ' - ' || restRec.closing_time);
        DBMS_OUTPUT.PUT_LINE(CHR(10));
        DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));

        -- COLUMN HEADING
        DBMS_OUTPUT.PUT_LINE(
            RPAD('ID',     5,  ' ') || ' ' ||
            RPAD('ITEM NAME',       30, ' ') || ' ' ||
            RPAD('TYPE',            8,  ' ') || ' ' ||
            RPAD('PRICE',           12, ' ') || ' ' ||
            RPAD('BUDGET',          8,  ' ') || ' ' ||
            RPAD('SUPER DEAL',      10, ' '));
        DBMS_OUTPUT.PUT_LINE(LPAD('-', 110, '-'));

        -- MENU ITEMS
        OPEN menuCursor(restRec.restaurant_id);
        v_itemCount := 0;

        LOOP
            FETCH menuCursor INTO menuRec;
            EXIT WHEN menuCursor%NOTFOUND;

            v_itemCount := v_itemCount + 1;

            DBMS_OUTPUT.PUT_LINE(
                RPAD(menuRec.item_id,         5,  ' ') || ' ' ||
                RPAD(menuRec.name,            30, ' ') || ' ' ||
                RPAD(menuRec.item_type,       8,  ' ') || ' ' ||
                RPAD(TO_CHAR(menuRec.price, '$999.99'), 12, ' ') || ' ' ||
                RPAD(CASE menuRec.is_budget     WHEN 'Y' THEN 'Yes' ELSE 'No' END, 8, ' ') || ' ' ||
                RPAD(CASE menuRec.is_super_deal WHEN 'Y' THEN 'Yes' ELSE 'No' END, 10, ' '));

        END LOOP;

        CLOSE menuCursor;

        DBMS_OUTPUT.PUT_LINE(LPAD('-', 110, '-'));
        DBMS_OUTPUT.PUT_LINE('TOTAL ITEMS: ' || v_itemCount);
        DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));
        DBMS_OUTPUT.PUT_LINE(CHR(10));

    END LOOP;

    CLOSE restCursor;

    -- REPORT FOOTER
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));
    DBMS_OUTPUT.PUT_LINE('TOTAL OPEN RESTAURANTS: ' || v_restCount);
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 45, '=') || RPAD(' END OF REPORT ', 65, '='));

END;
/