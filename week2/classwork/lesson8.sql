-- CREATE TABLE account(
-- user_id serial PRIMARY KEY,
-- username VARCHAR(50) UNIQUE NOT NULL,
-- password VARCHAR(50) NOT NULL,
-- email VARCHAR(355) UNIQUE NOT NULL,
-- last_login TIMESTAMP
-- );
CREATE TABLE profile(
profile_id serial PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(50) NOT NULL,
email_address VARCHAR(355),
address VARCHAR(50),
city VARCHAR(50) NOT NULL,
state VARCHAR(50) NOT NULL,
time_in TIMESTAMP,
time_out TIMESTAMP,
date_created TIMESTAMP NOT NULL
);