SET SERVEROUTPUT ON
DECLARE

    CURSOR subCursor IS
        SELECT
            c.customer_id,
            c.username,
            c.email,
            c.phone_no,
            s.subscription_id,
            sp.plan_name,
            s.start_date,
            s.end_date,
            ROUND(s.end_date - SYSDATE, 1) AS days_remaining
        FROM CUSTOMER c
        JOIN SUBSCRIPTION s ON c.customer_id = s.customer_id
        JOIN SUB_PLAN sp ON s.plan_id = sp.plan_id
        WHERE s.status = 'Active'
          AND s.end_date BETWEEN SYSDATE AND SYSDATE + 7
        ORDER BY s.end_date ASC;

    subRec    subCursor%ROWTYPE;
    v_count   NUMBER := 0;

BEGIN

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 120, '='));
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE('SUBSCRIPTIONS EXPIRING WITHIN 7 DAYS');
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 120, '='));

    -- COLUMN HEADING
    DBMS_OUTPUT.PUT_LINE(
        RPAD('ID',        5,  ' ') || ' ' ||
        RPAD('USERNAME',  15, ' ') || ' ' ||
        RPAD('EMAIL',     25, ' ') || ' ' ||
        RPAD('PHONE',     15, ' ') || ' ' ||
        RPAD('PLAN',      12, ' ') || ' ' ||
        RPAD('START',     12, ' ') || ' ' ||
        RPAD('END',       12, ' ') || ' ' ||
        RPAD('DAYS LEFT', 10, ' '));
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 120, '-'));

    OPEN subCursor;

    LOOP
        FETCH subCursor INTO subRec;
        EXIT WHEN subCursor%NOTFOUND;

        v_count := v_count + 1;

        DBMS_OUTPUT.PUT_LINE(
            RPAD(subRec.customer_id,                         5,  ' ') || ' ' ||
            RPAD(subRec.username,                            15, ' ') || ' ' ||
            RPAD(subRec.email,                               25, ' ') || ' ' ||
            RPAD(subRec.phone_no,                            15, ' ') || ' ' ||
            RPAD(subRec.plan_name,                           12, ' ') || ' ' ||
            RPAD(TO_CHAR(subRec.start_date, 'DD-MON-YY'),   12, ' ') || ' ' ||
            RPAD(TO_CHAR(subRec.end_date,   'DD-MON-YY'),   12, ' ') || ' ' ||
            RPAD(subRec.days_remaining,                      10, ' '));

    END LOOP;

    CLOSE subCursor;

    -- FOOTER
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 120, '-'));

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('NO SUBSCRIPTIONS EXPIRING WITHIN 7 DAYS.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TOTAL EXPIRING SUBSCRIPTIONS: ' || v_count);
    END IF;

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 52, '=') || RPAD(' END OF REPORT ', 68, '='));

END;
/