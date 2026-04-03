SELECT
    month_str,
    segment_name,
    total_issued,
    total_redeemed
FROM vw_coin_flow
ORDER BY
    month_str DESC,
    CASE segment_name
        WHEN 'Diamond' THEN 1
        WHEN 'Gold' THEN 2
        WHEN 'Silver' THEN 3
        ELSE 4
    END;
