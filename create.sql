CREATE DATABASE FoxTaxi;

use FoxTaxi;


CREATE TABLE IF NOT EXISTS user_info(
id SERIAL  PRIMARY KEY,
Name varchar (50),
Surname varchar (50),
Telephone NUMERIC,
google_id varchar (50),
facebook_id varchar (50),
email varchar (50)
);

CREATE TABLE IF NOT EXISTS vehicle_type(
id SERIAL PRIMARY KEY,
Name varchar(50)
);

CREATE TABLE IF NOT EXISTS driver(
user_info_id int UNIQUE NOT NULL REFERENCES user_info(id) ,
license_serie varchar(4) ,
license_number int NOT NULL
);

CREATE TABLE IF NOT EXISTS vehicle(
    gov_number varchar(50) PRIMARY KEY,
	vehicle_type_id int NOT NULL REFERENCES vehicle_type(id),
	driver_user_info_id int NOT NULL REFERENCES driver(user_info_id)
);



CREATE TABLE IF NOT  EXISTS payment_type(
id SERIAL PRIMARY KEY,
	name varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS payment_info(
id SERIAL PRIMARY KEY,
	amount numeric,
	payment_type_id int NOT NULL REFERENCES payment_type(id)	
);

CREATE TABLE IF NOT EXISTS checkpoint (
  id SERIAL PRIMARY KEY,
  lat numeric,
  lon numeric,
  street_name varchar(50),
  house_number varchar(50),
  locality_name varchar(50)
);

CREATE TABLE IF NOT EXISTS payment (
   id SERIAL PRIMARY KEY,
	total_amount numeric,
	payment_info_card_id int NULL REFERENCES payment_info(id),
	payment_info_cash_id int NULL REFERENCES payment_info(id),
	payment_info_bonus_id int NULL REFERENCES payment_info(id)
);
  
CREATE TABLE IF NOT EXISTS ride(
    id SERIAL PRIMARY KEY,
	 beginning_checkpoint_id int NOT NULL REFERENCES checkpoint(id),
	 destination_checkpoint_id int NOT NULL REFERENCES checkpoint(id), 
	 payment_id int NULL REFERENCES payment(id),
	 driver_user_info_id int NOT NULL REFERENCES driver(user_info_id)
);

CREATE TABLE ride_details(
    ride_detail_id SERIAL PRIMARY KEY,
	checkpoint_id_1 int NULL REFERENCES checkpoint,
	checkpoint_id_2 int NULL REFERENCES checkpoint,
	checkpoint_id_3 int NULL REFERENCES checkpoint,
	ride_id int NOT NULL REFERENCES ride(id)
);




