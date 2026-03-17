SET SERVEROUTPUT ON
DECLARE

    CURSOR restCursor IS
        SELECT
            r.restaurant_id,
            r.name,
            r.location,
            r.rating,
            r.halal_status
        FROM RESTAURANT r
        WHERE r.restaurant_id NOT IN (
            SELECT DISTINCT o.restaurant_id
            FROM CUST_ORDER o
            WHERE o.order_datetime >= SYSDATE - 30
        )
        ORDER BY r.name;

    restRec    restCursor%ROWTYPE;
    v_count    NUMBER := 0;

BEGIN

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 90, '='));
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE('RESTAURANTS WITHOUT ORDERS IN THE PAST 30 DAYS');
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 90, '='));

    -- COLUMN HEADING
    DBMS_OUTPUT.PUT_LINE(
        RPAD('ID',     5,  ' ') || ' ' ||
        RPAD('RESTAURANT',     30, ' ') || ' ' ||
        RPAD('LOCATION',       20, ' ') || ' ' ||
        RPAD('RATING',         8,  ' ') || ' ' ||
        RPAD('HALAL',          6,  ' '));
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 90, '-'));

    OPEN restCursor;

    LOOP
        FETCH restCursor INTO restRec;
        EXIT WHEN restCursor%NOTFOUND;

        v_count := v_count + 1;

        DBMS_OUTPUT.PUT_LINE(
            RPAD(restRec.restaurant_id, 5,  ' ') || ' ' ||
            RPAD(restRec.name,         30, ' ') || ' ' ||
            RPAD(restRec.location,     20, ' ') || ' ' ||
            RPAD(TO_CHAR(restRec.rating, '9.9'), 8, ' ') || ' ' ||
            RPAD(restRec.halal_status, 6,  ' '));

    END LOOP;

    CLOSE restCursor;

    -- FOOTER
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 90, '-'));

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('ALL RESTAURANTS HAVE ORDERS IN THE PAST 30 DAYS.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TOTAL INACTIVE RESTAURANTS: ' || v_count);
    END IF;

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 37, '=') || RPAD(' END OF REPORT ', 53, '='));

END;
/