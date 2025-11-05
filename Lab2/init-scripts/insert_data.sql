INSERT INTO customer(name, surname, email, phone_number)
VALUES ('Марія', 'Шевченко', 'shevch@lll.kpi.ua', '380682715004'),
       ('Дар`я', 'Федоренко', 'fedora@lll.kpi.ua', '380542715063'),
       ('Богдан', 'Федоренко', 'fedorenko2@lll.kpi.ua', '380542715066'),
       ('Іван', 'Ілющенко', 'ivanIl@lll.kpi.ua', '480642715067');

INSERT INTO account(iban, currency, type, customer_id)
VALUES ('UA453052820000026004012345632', 'UAH', 'deposit', 1),
       ('UA453052820000026004012345443', 'UAH', 'saving', 3);
INSERT INTO account(iban, currency, balance, type, customer_id)
VALUES ('UA453042820000026004012345633', 'UAH', 2500, 'saving', 1),
       ('UA453542820000026004012345633', 'UAH', 2000, 'credit', 1);

INSERT INTO card (card_number, expiration_date, type, account_id)
VALUES ('1112222233334044', '2025-12-12', 'debit', 2),
       ('1171222333334444', '2025-12-15', 'debit', 3),
       ('1111223338334444', '2025-12-15', 'credit', 4);

INSERT INTO transactions(type, currency, amount, date, from_account_id, to_account_id)
VALUES ('transfer', 'UAH', 500,  CURRENT_DATE, 3, 2),
       ('transfer', 'UAH', 300,  CURRENT_DATE, 3, 1),
       ('transfer', 'UAH', 100,  CURRENT_DATE, 2, 1);

INSERT INTO loan(amount, interest_rate, start_date, end_date, status, account_id)
VALUES (1000, 12.5, '2025-10-10', '2026-10-12', 'active', 1 ),
       (1000, 12.5, '2024-10-10', '2025-10-12', 'overdue', 1 ),
       (5000, 13, '2020-5-10', '2023-5-12', 'closed', 1 );