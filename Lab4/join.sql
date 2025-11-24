SELECT c.customer_id, c.name, c.surname, a.iban, a.balance
FROM customer c
INNER JOIN account a ON c.customer_id = a.customer_id;

SELECT a.account_id, a.iban, c.card_number
FROM account a
LEFT JOIN card c ON a.account_id = c.account_id;

SELECT c.card_number, c.expiration_date, a.iban
FROM account a
RIGHT JOIN card c ON a.account_id = c.account_id;