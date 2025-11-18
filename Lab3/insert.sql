INSERT INTO customer(name, surname, email, phone_number)
VALUES ('Максим', 'Коваль', 'koval@lll.kpi.ua', '380501112233'),
       ('Катерина', 'Глеба', 'katya.gleba@lll.kpi.ua', '380671234567');

INSERT INTO account(iban, currency, balance, type, customer_id)
VALUES ('UA123456780000026004012345111', 'USD', 1500, 'saving', 5),
       ('UA998877660000026004012345222', 'EUR', 3200, 'deposit', 6);

INSERT INTO card(card_number, expiration_date, type, account_id)
VALUES ('5555444433332222', '2026-07-10', 'debit', 5),
       ('4444333322221111', '2027-01-01', 'credit', 6);

INSERT INTO transactions(type, currency, amount, date, from_account_id, to_account_id)
VALUES ('transfer', 'USD', 200, CURRENT_DATE, 5, 3),
       ('transfer', 'EUR', 450, CURRENT_DATE, 6, 1);

INSERT INTO loan(amount, interest_rate, start_date, end_date, status, account_id)
VALUES (2000, 11.0, '2023-02-15', '2024-02-15', 'closed', 5),
       (7500, 14.2, '2024-08-01', '2025-08-01', 'active', 6);