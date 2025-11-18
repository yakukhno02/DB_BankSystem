DELETE FROM card
WHERE card_number = '1171222333334444';

DELETE FROM loan
WHERE status = 'closed' and account_id = 5;