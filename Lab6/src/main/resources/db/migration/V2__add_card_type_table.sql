CREATE TABLE card_type (
                           type_id SERIAL PRIMARY KEY,
                           type_name VARCHAR(32) UNIQUE NOT NULL
);

INSERT INTO card_type (type_name)
VALUES ('debit'), ('credit');