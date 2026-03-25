SELECT
    t.tier_name,
    t.min_total_spend,
    b.benefit_type,
    b.benefit_value,
    b.description
FROM
    LOYALTY_TIER t
LEFT JOIN
    L_BENEFIT b ON t.tier_id = b.tier_id
ORDER BY
    t.min_total_spend ASC,
    b.benefit_type;
