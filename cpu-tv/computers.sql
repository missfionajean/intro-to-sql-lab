-- Open up psql and create a sql_lab database if you haven't already done so. If you already have a sql_lab database, no need to create it again. Write SQL commands under the prompts below, and run the file to get results. In case there is already a computers table, drop it.

-- (Creating separate databases for each lab exercise)

CREATE DATABASE computers;

-- Create a computers table. The table should have id, make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports.

CREATE TABLE computers (id SERIAL, make VARCHAR(32), model VARCHAR(32), cpu_speed VARCHAR(16), memory_size VARCHAR(16), price INT, release_date INT, photo_url VARCHAR(64), storage_amount VARCHAR(16), number_usb_ports INT, number_firewire_ports INT, number_thunderbolt_ports INT);

-- Insert 4 computers into the computers table

INSERT INTO computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES ('Dell', 'Centrino', '144ghz', '8gb', 500, 2010, 'photo.url/dell', '256gb', 2, 1, 0);

INSERT INTO computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES ('Mac', 'Macbook', '288ghz', '12gb', 1000, 2020, 'photo.url/mac', '512gb', 3, 2, 1);

INSERT INTO computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES ('Acer', 'Speedster', '357ghz', '12gb', 800, 2022, 'photo.url/acer', '256gb', 2, 0, 2);

INSERT INTO computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports) VALUES ('Toshiba', 'Powerlord', '444ghz', '16gb', 1200, 2023, 'photo.url/toshiba', '1tb', 4, 2, 2);

-- Select all entries from the computers table

SELECT * FROM computers;

-- HUNGRY FOR MORE? Look at this afternoon's instructor notes and read on altering tables before attempting below.

-- Alter the computers_models, removing the storage_amount column and add storage_type and storage_size columns.

ALTER TABLE computers DROP COLUMN storage_amount;

ALTER TABLE computers ADD COLUMN storage_type VARCHAR(8);
ALTER TABLE computers ADD COLUMN storage_size INT;

UPDATE computers SET storage_type = 'GB' WHERE id = 1;
UPDATE computers SET storage_size = 8 WHERE id = 1;