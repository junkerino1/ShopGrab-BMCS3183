COLUMN tier         FORMAT A7         HEADING 'TIER'
COLUMN customer_id  FORMAT 99999      HEADING 'CID'
COLUMN username     FORMAT A12        HEADING 'USERNAME'
COLUMN total_spent  FORMAT 999990.00  HEADING 'SPENT'

SELECT
    tier,
    customer_id,
    username,
    total_spent
FROM vw_loyalty_customer
ORDER BY
    CASE tier
        WHEN 'Diamond' THEN 1
        WHEN 'Gold' THEN 2
        WHEN 'Silver' THEN 3
        ELSE 4
    END,
    total_spent DESC;