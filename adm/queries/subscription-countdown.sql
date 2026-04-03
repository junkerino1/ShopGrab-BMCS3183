SELECT
    user_id AS "USERID",
    name AS "NAME",
    email AS "EMAIL",
    days_left AS "DAYS LEFT"
FROM vw_subscription_countdown
ORDER BY days_left ASC;