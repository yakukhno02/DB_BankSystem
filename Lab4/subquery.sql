SELECT *
FROM transactions
WHERE amount > (
    SELECT AVG(amount) AS avg_amount
    FROM transactions
);

SELECT
    a.account_id,
    a.iban,
    (
        SELECT SUM(t.amount)
        FROM transactions t
        WHERE t.from_account_id = a.account_id
    ) AS total_sent
FROM account a;

SELECT
    to_account_id,
    SUM(amount) AS total_received
FROM transactions
GROUP BY to_account_id
HAVING SUM(amount) > (
    SELECT AVG(amount)
    FROM transactions
);