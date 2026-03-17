SET SERVEROUTPUT ON
DECLARE

    CURSOR voucherCursor IS
        SELECT
            v.voucher_id,
            v.voucher_code,
            v.voucher_type,
            v.distribution_type,
            v.benefit_type,
            v.min_spend,
            v.max_amount,
            v.usage_limit,
            v.valid_start,
            v.valid_end,
            ROUND(v.valid_end - SYSDATE, 1) AS days_remaining,
            v.status
        FROM VOUCHER v
        WHERE v.status = 'Active'
          AND v.valid_end BETWEEN SYSDATE AND SYSDATE + 7
        ORDER BY v.valid_end ASC;

    vRec       voucherCursor%ROWTYPE;
    v_count    NUMBER := 0;

BEGIN

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 120, '='));
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE('VOUCHERS EXPIRING WITHIN 7 DAYS');
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 120, '='));

    -- COLUMN HEADING
    DBMS_OUTPUT.PUT_LINE(
        RPAD('ID',         4,  ' ') || ' ' ||
        RPAD('CODE',       12, ' ') || ' ' ||
        RPAD('TYPE',       8,  ' ') || ' ' ||
        RPAD('BENEFIT',    8,  ' ') || ' ' ||
        RPAD('MIN SPEND',  12, ' ') || ' ' ||
        RPAD('MAX AMT',    12, ' ') || ' ' ||
        RPAD('LIMIT',      6,  ' ') || ' ' ||
        RPAD('START',      12, ' ') || ' ' ||
        RPAD('END',        12, ' ') || ' ' ||
        RPAD('DAYS LEFT',  10, ' '));
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 120, '-'));

    OPEN voucherCursor;

    LOOP
        FETCH voucherCursor INTO vRec;
        EXIT WHEN voucherCursor%NOTFOUND;

        v_count := v_count + 1;

        DBMS_OUTPUT.PUT_LINE(
            RPAD(vRec.voucher_id,                            4,  ' ') || ' ' ||
            RPAD(vRec.voucher_code,                          12, ' ') || ' ' ||
            RPAD(vRec.voucher_type,                          8,  ' ') || ' ' ||
            RPAD(vRec.benefit_type,                          8,  ' ') || ' ' ||
            RPAD(TO_CHAR(vRec.min_spend, '$999.99'),         12, ' ') || ' ' ||
            RPAD(TO_CHAR(vRec.max_amount, '$999.99'),        12, ' ') || ' ' ||
            RPAD(NVL(TO_CHAR(vRec.usage_limit), 'N/A'),     6,  ' ') || ' ' ||
            RPAD(TO_CHAR(vRec.valid_start, 'DD-MON-YY'),    12, ' ') || ' ' ||
            RPAD(TO_CHAR(vRec.valid_end,   'DD-MON-YY'),    12, ' ') || ' ' ||
            RPAD(vRec.days_remaining,                        10, ' '));

    END LOOP;

    CLOSE voucherCursor;

    -- FOOTER
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 120, '-'));

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('NO VOUCHERS EXPIRING WITHIN 7 DAYS.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TOTAL EXPIRING VOUCHERS: ' || v_count);
    END IF;

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 52, '=') || RPAD(' END OF REPORT ', 68, '='));

END;
/