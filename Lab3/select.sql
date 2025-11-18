SELECT name, surname, email, phone_number
FROM customer;

SELECT transaction_id, type, currency, amount, date, from_account_id, to_account_id
FROM transactions
WHERE amount >= 300;

SELECT loan_id, amount, interest_rate, start_date, end_date
FROM loan
WHERE status = 'active' AND end_date > CAST('2026-01-01' AS DATE);
