ALTER TABLE user_info 
ALTER Telephone TYPE numeric
USING telephone::numeric;


CREATE SEQUENCE foo_a_seq OWNED BY user_info.id;
SELECT setval('foo_a_seq', coalesce(max(id), 0) + 1, false) FROM user_info;
ALTER TABLE user_info ALTER COLUMN id SET DEFAULT nextval('foo_a_seq')


UPDATE payment
SET payment_info_card_id = 2
WHERE id = 1;

UPDATE payment
SET payment_info_cash_id = 1
WHERE id = 1;

UPDATE payment
SET payment_info_bonus_id = 3
WHERE id = 1;

UPDATE ride
SET payment_id = 1
WHERE id =3
