SET SERVEROUTPUT ON
DECLARE

    v_currentMonth VARCHAR2(7) := '';

    CURSOR voucherCursor IS
        SELECT
            TO_CHAR(vw.used_at, 'YYYY-MM') AS month,
            v.voucher_id,
            v.voucher_code,
            v.benefit_type,
            COUNT(*) AS times_used
        FROM VOUCHER_WALLET vw
        JOIN VOUCHER v ON vw.voucher_id = v.voucher_id
        WHERE vw.is_used = 'Y'
          AND vw.used_at IS NOT NULL
        GROUP BY TO_CHAR(vw.used_at, 'YYYY-MM'), v.voucher_id, v.voucher_code, v.benefit_type
        ORDER BY month DESC, times_used DESC;

    vRec          voucherCursor%ROWTYPE;
    v_count       NUMBER := 0;
    v_grandTotal  NUMBER := 0;

BEGIN

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 90, '='));
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE('MONTHLY VOUCHER USAGE REPORT');
    DBMS_OUTPUT.PUT_LINE(CHR(10));
    DBMS_OUTPUT.PUT_LINE(LPAD('=', 90, '='));

    OPEN voucherCursor;

    LOOP
        FETCH voucherCursor INTO vRec;
        EXIT WHEN voucherCursor%NOTFOUND;

        -- PRINT MONTH HEADER WHEN MONTH CHANGES
        IF v_currentMonth != vRec.month THEN
            IF v_currentMonth IS NOT NULL THEN
                DBMS_OUTPUT.PUT_LINE(LPAD('-', 90, '-'));
                DBMS_OUTPUT.PUT_LINE(CHR(10));
            END IF;

            v_currentMonth := vRec.month;

            DBMS_OUTPUT.PUT_LINE(LPAD('=', 90, '='));
            DBMS_OUTPUT.PUT_LINE(CHR(10));
            DBMS_OUTPUT.PUT_LINE('MONTH: ' || v_currentMonth);
            DBMS_OUTPUT.PUT_LINE(CHR(10));
            DBMS_OUTPUT.PUT_LINE(LPAD('=', 90, '='));

            -- COLUMN HEADING
            DBMS_OUTPUT.PUT_LINE(
                RPAD('ID',           5,  ' ') || ' ' ||
                RPAD('VOUCHER CODE', 15, ' ') || ' ' ||
                RPAD('BENEFIT TYPE', 15, ' ') || ' ' ||
                RPAD('TIMES USED',   12, ' '));
            DBMS_OUTPUT.PUT_LINE(LPAD('-', 90, '-'));
        END IF;

        v_count := v_count + 1;
        v_grandTotal := v_grandTotal + vRec.times_used;

        DBMS_OUTPUT.PUT_LINE(
            RPAD(vRec.voucher_id,   5,  ' ') || ' ' ||
            RPAD(vRec.voucher_code, 15, ' ') || ' ' ||
            RPAD(vRec.benefit_type, 15, ' ') || ' ' ||
            RPAD(vRec.times_used,   12, ' '));

    END LOOP;

    CLOSE voucherCursor;

    -- FOOTER
    DBMS_OUTPUT.PUT_LINE(LPAD('-', 90, '-'));

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE('NO VOUCHERS HAVE BEEN USED YET.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TOTAL VOUCHER ENTRIES: ' || v_count || '   |   GRAND TOTAL USAGE: ' || v_grandTotal);
    END IF;

    DBMS_OUTPUT.PUT_LINE(LPAD('=', 37, '=') || RPAD(' END OF REPORT ', 53, '='));

END;
/