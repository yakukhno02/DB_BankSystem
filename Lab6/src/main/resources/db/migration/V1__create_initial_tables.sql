CREATE TYPE account_type AS ENUM('credit', 'saving', 'deposit');

CREATE TYPE loan_status AS ENUM('active', 'closed', 'overdue');

CREATE TABLE customer (
                          customer_id SERIAL PRIMARY KEY,
                          name VARCHAR(32) NOT NULL,
                          surname VARCHAR(32) NOT NULL,
                          email VARCHAR(64) NOT NULL UNIQUE,
                          phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE account (
                         account_id SERIAL PRIMARY KEY,
                         iban VARCHAR(34) NOT NULL UNIQUE,
                         balance DECIMAL(12, 2) DEFAULT 0 CHECK(balance >= 0),
                         currency VARCHAR(3) NOT NULL,
                         type account_type NOT NULL,
                         customer_id INT REFERENCES customer(customer_id)
);

CREATE TABLE card (
                      card_id SERIAL PRIMARY KEY,
                      card_number VARCHAR(16) NOT NULL UNIQUE,
                      expiration_date DATE NOT NULL,
                      type VARCHAR(32) NOT NULL,
                      account_id INT REFERENCES account(account_id)
);

CREATE TABLE transactions (
                              transaction_id SERIAL PRIMARY KEY,
                              type VARCHAR(32) NOT NULL,
                              currency VARCHAR(3) NOT NULL,
                              amount DECIMAL(12, 2) NOT NULL CHECK (amount > 0),
                              date DATE NOT NULL DEFAULT CURRENT_DATE,
                              from_account_id INT REFERENCES account(account_id),
                              to_account_id INT REFERENCES account(account_id)
);

CREATE TABLE loan (
                      loan_id SERIAL PRIMARY KEY,
                      amount DECIMAL(12, 2) NOT NULL,
                      interest_rate DECIMAL(5, 2) CHECK (interest_rate >= 0 AND interest_rate <= 100),
                      start_date DATE NOT NULL,
                      end_date DATE NOT NULL,
                      status loan_status NOT NULL,
                      account_id INT REFERENCES account(account_id)
);