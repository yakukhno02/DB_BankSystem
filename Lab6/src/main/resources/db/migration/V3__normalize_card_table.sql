ALTER TABLE card
ADD COLUMN type_id INTEGER;

UPDATE card
SET type_id = (
    SELECT type_id
    FROM card_type
    WHERE card_type.type_name = card.type
    );

ALTER TABLE card
DROP column type;

ALTER TABLE card
ALTER COLUMN type_id SET NOT NULL;

ALTER TABLE card
ADD CONSTRAINT fk_card_type
FOREIGN KEY (type_id) REFERENCES card_type(type_id);
