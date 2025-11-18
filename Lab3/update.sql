UPDATE account
SET balance = balance + 500
WHERE account_id = 2;

UPDATE customer
SET email = 'shevM@gmail.com', phone_number = '380501234500'
WHERE customer_id = 1;

UPDATE loan
SET status = 'closed'
WHERE loan_id = 1;