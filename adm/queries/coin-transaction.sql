COLUMN customer_id      FORMAT 999999         HEADING 'Customer'
COLUMN username         FORMAT A15            HEADING 'Username'
COLUMN current_balance  FORMAT 999,990    HEADING 'Balance'
COLUMN coin_changes     FORMAT 999,990    HEADING 'Coin +/-'
COLUMN order_id         FORMAT 9999      HEADING 'Order ID'
COLUMN transaction_at   FORMAT A20            HEADING 'Transaction Time'

SELECT
    customer_id,
    username,
    wallet_id,
    current_balance,
    coin_changes,
    order_id,
    TO_CHAR(transaction_date, 'DD-MM-YY HH24:MI:SS') AS transaction_at
FROM vw_coin_transaction
ORDER BY transaction_date DESC;
