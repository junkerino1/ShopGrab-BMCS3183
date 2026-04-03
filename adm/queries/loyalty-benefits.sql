SELECT
    tier_name,
    min_total_spend,
    benefit_type,
    benefit_value,
    description
FROM vw_loyalty_benefits
ORDER BY min_total_spend ASC, benefit_type;
