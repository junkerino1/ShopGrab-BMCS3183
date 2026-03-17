SET SERVEROUTPUT ON
DECLARE

    CURSOR platCursor IS
        SELECT
            p.platform_id,
            p.platform_name,
            COUNT(*) AS total_completed_deliveries
        FROM CUST_ORDER o
        JOIN PLATFORM p ON o.platform_id = p.platform_id
        WHERE o.order_status = 'Completed'
          AND o.order_type = 'D'
        GROUP BY p.platform_id, p.platform_name
        ORDER BY total_completed_deliveries DESC;

    platRec     platCursor%ROWTYPE;
    v_rank      NUMBER := 0;
    v_grandTotal NUMBER := 0;

BEGIN

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 70, '='));
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE('HIGHEST ORDER VOLUME DELIVERED BY PLATFORM');
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 70, '='));

    -- COLUMN HEADING
    DBMS_OUTPUT.PUT_LINE(
        RPAD('RANK',  6,  ' ') || ' ' ||
        RPAD('ID',    5,  ' ') || ' ' ||
        RPAD('PLATFORM',       20, ' ') || ' ' ||
        RPAD('COMPLETED DELIVERIES', 22, ' '));
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 70, '-'));

    OPEN platCursor;

    LOOP
        FETCH platCursor INTO platRec;
        EXIT WHEN platCursor%NOTFOUND;

        v_rank := v_rank + 1;
        v_grandTotal := v_grandTotal + platRec.total_completed_deliveries;

        DBMS_OUTPUT.PUT_LINE(
            RPAD(v_rank,                              6,  ' ') || ' ' ||
            RPAD(platRec.platform_id,                 5,  ' ') || ' ' ||
            RPAD(platRec.platform_name,               20, ' ') || ' ' ||
            RPAD(platRec.total_completed_deliveries,  22, ' '));

    END LOOP;

    CLOSE platCursor;

    -- FOOTER
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 70, '-'));
    DBMS_OUTPUT.PUT_LINE('TOTAL PLATFORMS: ' || v_rank || '   |   GRAND TOTAL DELIVERIES: ' || v_grandTotal);
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 28, '=') || RPAD(' END OF REPORT ', 42, '='));

END;
/