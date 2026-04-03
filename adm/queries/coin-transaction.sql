SELECT
    customer_id,
    username,
    wallet_id,
    current_balance,
    transaction_id,
    coin_changes,
    order_id,
    TO_CHAR(transaction_date, 'DD-MON-YYYY HH24:MI:SS') AS transaction_date
FROM vw_coin_transaction
ORDER BY transaction_date DESC;
