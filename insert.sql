INSERT INTO user_info(name, surname, telephone) 
VALUES ('Bogdan', 'Khmelnitskyi', 3806524763)

INSERT INTO user_info(name, surname, telephone) 
VALUES ('Bogdan', 'Khmelnitskyi', 3806524763)

INSERT INTO driver(user_info_id,license_serie,license_number)
VALUES (1, 'ААА', 253698);

INSERT INTO checkpoint (lat, lon, street_name, house_number, locality_name)
VALUES (48.885561	,38.479120,	"Chervona"	,12	,"Lysychansk");

INSERT INTO checkpoint (lat, lon, street_name, house_number, locality_name)
VALUES (48.914019	,38.418236,	"prospekt Peremohy",	86,	"Lysychansk");

INSERT INTO checkpoint (lat, lon, street_name, house_number, locality_name)
VALUES (48.861636, 38.467134, 'kvartal 40 rokiv Peremoghi', 12, 'Lysychansk');

INSERT INTO ride (beginning_checkpoint_id, destination_checkpoint_id, payment_id, driver_user_info_id)
VALUES (3,2, null, 1);

INSERT INTO ride_details (checkpoint_id_1, checkpoint_id_2, checkpoint_id_3, ride_id)
VALUES (1, null, null, 3);

INSERT INTO ride (beginning_checkpoint_id, destination_checkpoint_id, payment_id, driver_user_info_id)
VALUES (1, 2, null, 1 );

INSERT INTO ride_details (checkpoint_id_1, checkpoint_id_2, checkpoint_id_3)
VALUES (3, null, null);
INSERT INTO payment_type(name)
VALUES ('cash');

INSERT INTO payment_type(name)
VALUES ('card');

INSERT INTO payment_type(name)
VALUES ('bonus');


INSERT INTO payment(total_amount, payment_info_card_id,payment_info_cash_id, payment_info_bonus_id)
VALUES (200.50, NULL, NULL, NULL);

INSERT INTO payment_info (amount, payment_type_id)
VALUES (100, 1);

INSERT INTO payment_info (amount, payment_type_id)
VALUES (90, 2);

INSERT INTO payment_info (amount, payment_type_id)
VALUES (10.50, 3);

