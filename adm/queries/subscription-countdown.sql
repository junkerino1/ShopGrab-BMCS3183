COLUMN customer_id      FORMAT 99999        HEADING 'CUS ID'
COLUMN name             FORMAT A12          HEADING 'CUS NAME'
COLUMN email            FORMAT A18          HEADING 'EMAIL'
COLUMN days_left        FORMAT 999          HEADING 'DAYS LEFT'
COLUMN end_date         FORMAT A12          HEADING 'END DATE'

SELECT
    customer_id,
    INITCAP(name) AS name,
    LOWER(email) AS email,
    days_left,
    TO_CHAR(end_date, 'DD-MM-YYYY') AS end_date
FROM vw_subscription_countdown
ORDER BY days_left ASC, name ASC;