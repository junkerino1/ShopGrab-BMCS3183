COLUMN tier_name        FORMAT A8         HEADING 'Tier'
COLUMN benefit_type     FORMAT A20        HEADING 'Benefit Type'
COLUMN description      FORMAT A22        HEADING 'Description'

SELECT
    tier_name,
    benefit_type,
    description
FROM vw_loyalty_benefits;
