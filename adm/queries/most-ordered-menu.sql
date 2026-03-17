SET SERVEROUTPUT ON
DECLARE

    CURSOR restCursor IS
        SELECT restaurant_id, name
        FROM RESTAURANT
        ORDER BY name;

    CURSOR menuCursor (p_restaurant_id NUMBER) IS
        SELECT 
            m.item_id,
            m.name AS item_name,
            m.price,
            m.item_type,
            SUM(od.quantity) AS total_qty_ordered,
            COUNT(od.order_id) AS times_ordered
        FROM ORDER_DETAILS od
        JOIN MENU_ITEM m ON od.menu_item_id = m.item_id
        WHERE m.restaurant_id = p_restaurant_id
        GROUP BY m.item_id, m.name, m.price, m.item_type
        ORDER BY total_qty_ordered DESC;

    restRec    restCursor%ROWTYPE;
    menuRec    menuCursor%ROWTYPE;
    v_restCount   NUMBER := 0;
    v_itemCount   NUMBER;
    v_totalQty    NUMBER;
    v_grandQty    NUMBER := 0;

BEGIN

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));
    DBMS_OUTPUT.PUT_LINE('MOST ORDERED MENU ITEMS BY RESTAURANT');
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
        DBMS_OUTPUT.PUT_LINE('RESTAURANT: ' || restRec.name);
        DBMS_OUTPUT.PUT_LINE(CHR(10));
        DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));

        -- COLUMN HEADING
        DBMS_OUTPUT.PUT_LINE(
            RPAD('ID',          5,  ' ') || ' ' ||
            RPAD('ITEM NAME',   30, ' ') || ' ' ||
            RPAD('TYPE',        8,  ' ') || ' ' ||
            RPAD('PRICE',       12, ' ') || ' ' ||
            RPAD('QTY ORDERED', 12, ' ') || ' ' ||
            RPAD('TIMES ORDERED', 14, ' '));
        DBMS_OUTPUT.PUT_LINE(LPAD('-', 110, '-'));

        -- BODY
        OPEN menuCursor(restRec.restaurant_id);
        v_itemCount := 0;
        v_totalQty  := 0;

        LOOP
            FETCH menuCursor INTO menuRec;
            EXIT WHEN menuCursor%NOTFOUND;

            v_itemCount := v_itemCount + 1;
            v_totalQty  := v_totalQty + menuRec.total_qty_ordered;

            DBMS_OUTPUT.PUT_LINE(
                RPAD(menuRec.item_id,           5,  ' ') || ' ' ||
                RPAD(menuRec.item_name,         30, ' ') || ' ' ||
                RPAD(menuRec.item_type,         8,  ' ') || ' ' ||
                RPAD(TO_CHAR(menuRec.price, '$999.99'), 12, ' ') || ' ' ||
                RPAD(menuRec.total_qty_ordered, 12, ' ') || ' ' ||
                RPAD(menuRec.times_ordered,     14, ' '));

        END LOOP;

        CLOSE menuCursor;

        -- RESTAURANT FOOTER
        DBMS_OUTPUT.PUT_LINE(LPAD('-', 110, '-'));

        IF v_itemCount > 0 THEN
            DBMS_OUTPUT.PUT_LINE('TOTAL ITEMS ORDERED: ' || v_itemCount || '   |   TOTAL QTY SOLD: ' || v_totalQty);
        ELSE
            DBMS_OUTPUT.PUT_LINE('NO ORDERS FOUND');
        END IF;

        DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));
        DBMS_OUTPUT.PUT_LINE(CHR(10));

        v_grandQty := v_grandQty + v_totalQty;

    END LOOP;

    CLOSE restCursor;

    -- REPORT FOOTER
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 110, '='));
    DBMS_OUTPUT.PUT_LINE('TOTAL RESTAURANTS: ' || v_restCount || '   |   GRAND TOTAL QTY SOLD: ' || v_grandQty);
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 45, '=') || RPAD(' END OF REPORT ', 65, '='));

END;
/