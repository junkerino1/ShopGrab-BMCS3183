COLUMN month_str FORMAT A10 HEADING 'MONTH';
COLUMN segment_name FORMAT A20 HEADING 'CUSTOMER SEGMENT';
COLUMN total_issued FORMAT 999999 HEADING 'COINS ISSUED';
COLUMN total_redeemed FORMAT 999999 HEADING 'COINS REDEEMED';
COLUMN net_balance FORMAT 999999 HEADING 'NET BALANCE';

WITH Months AS (
    SELECT DISTINCT TO_CHAR(transaction_date, 'YYYY-MM') AS month_str FROM COIN_TRANSACTION
    UNION
    SELECT DISTINCT TO_CHAR(order_datetime, 'YYYY-MM') AS month_str FROM CUST_ORDER
),
Monthly_Issued AS (
    SELECT 
        cw.customer_id, 
        TO_CHAR(ct.transaction_date, 'YYYY-MM') AS month_str,
        SUM(ct.coin_changes) AS coins_issued
    FROM COIN_TRANSACTION ct
    JOIN COIN_WALLET cw ON ct.wallet_id = cw.wallet_id
    WHERE ct.coin_changes > 0
    GROUP BY cw.customer_id, TO_CHAR(ct.transaction_date, 'YYYY-MM')
),
Monthly_Redeemed AS (
    SELECT 
        customer_id, 
        TO_CHAR(order_datetime, 'YYYY-MM') AS month_str,
        SUM(coin_used) AS coins_redeemed
    FROM CUST_ORDER
    WHERE coin_used > 0
    GROUP BY customer_id, TO_CHAR(order_datetime, 'YYYY-MM')
)
SELECT 
    m.month_str,
    lt.tier_name AS segment_name,
    NVL(SUM(i.coins_issued), 0) AS total_issued,
    NVL(SUM(r.coins_redeemed), 0) AS total_redeemed,
    NVL(SUM(i.coins_issued), 0) - NVL(SUM(r.coins_redeemed), 0) AS net_balance
FROM Months m
CROSS JOIN LOYALTY_TIER lt
LEFT JOIN C_LOYALTY cl ON lt.tier_id = cl.tier_id
LEFT JOIN CUSTOMER c ON cl.customer_id = c.customer_id
LEFT JOIN Monthly_Issued i ON c.customer_id = i.customer_id AND m.month_str = i.month_str
LEFT JOIN Monthly_Redeemed r ON c.customer_id = r.customer_id AND m.month_str = r.month_str
GROUP BY m.month_str, lt.tier_name, lt.tier_id
ORDER BY m.month_str DESC, lt.tier_id DESC;
