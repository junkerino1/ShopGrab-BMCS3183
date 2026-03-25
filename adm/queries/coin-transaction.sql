COLUMN customer_id FORMAT A15;
COLUMN username FORMAT A20;
COLUMN wallet_id FORMAT A15;
COLUMN current_balance FORMAT 999999;
COLUMN transaction_id FORMAT A15;
COLUMN coin_changes FORMAT 999999;
COLUMN order_id FORMAT A15;
COLUMN transaction_date FORMAT A25;

SELECT
    c.customer_id,
    c.username,
    cw.wallet_id,
    cw.total_coins AS current_balance,
    ct.transaction_id,
    ct.coin_changes,
    ct.order_id,
    TO_CHAR(ct.transaction_date, 'DD-MON-YYYY HH24:MI:SS') AS transaction_date
FROM
    CUSTOMER c
JOIN
    COIN_WALLET cw ON c.customer_id = cw.customer_id
JOIN
    COIN_TRANSACTION ct ON cw.wallet_id = ct.wallet_id
ORDER BY
    ct.transaction_date DESC;
