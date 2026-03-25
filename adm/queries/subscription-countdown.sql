SELECT
    c.customer_id AS "USERID",
    c.username AS "NAME",
    c.email AS "EMAIL",
    ROUND(s.end_date - SYSDATE, 1) AS "DAYS LEFT"
FROM CUSTOMER c
JOIN SUBSCRIPTION s ON c.customer_id = s.customer_id
WHERE s.status = 'Active'
  AND s.end_date BETWEEN SYSDATE AND SYSDATE + 7
ORDER BY s.end_date ASC;