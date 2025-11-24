SELECT COUNT(*) AS total_customers
FROM customer;

SELECT ROUND(AVG(balance), 2) AS avg_balance
FROM account;

SELECT SUM(amount) AS total_sum_of_transactions
FROM transactions;

SELECT
    MIN(interest_rate) AS min_interest_rate,
    MAX(interest_rate) AS max_interest_rate
FROM loan

