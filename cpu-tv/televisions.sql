-- Open up psql and create a sql_lab database if you haven't already done so. If you already have a sql_lab database, no need to create it again. Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it

DROP TABLE televisions;

-- (Creating separate databases for each lab exercise)

CREATE DATABASE televisions;
\c televisions

-- Create a televisions table. The table should have id, model_name, screen_size, resolution, price, release_date, photo_url

CREATE TABLE televisions (id SERIAL, model_name VARCHAR(16), screen_size_inches INT, resolution VARCHAR(8), price INT, release_date INT, photo_url VARCHAR(32));

-- Insert 4 televisions into the tv_models table

INSERT INTO televisions (model_name, screen_size_inches, resolution, price, release_date, photo_url) VALUES ('TCL', 27, '1080p', 200, 2015, 'photo.url/TCL');

INSERT INTO televisions (model_name, screen_size_inches, resolution, price, release_date, photo_url) VALUES ('Vizio', 50, '4k', 800, 2020, 'photo.url/Vizio');

INSERT INTO televisions (model_name, screen_size_inches, resolution, price, release_date, photo_url) VALUES ('Samsung', 72, '8k', 1500, 2024, 'photo.url/Samsung');

INSERT INTO televisions (model_name, screen_size_inches, resolution, price, release_date, photo_url) VALUES ('TV', 12, '480p', 50, 2010, 'photo.url/TV');

-- Select all entries from the tv_models table

SELECT * FROM televisions;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
