CREATE TABLE cities (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  name VARCHAR(300) NOT NULL
);

CREATE TABLE addresses (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(50) NOT NULL,
  city_id INT NOT NULL
);

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- Postgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  email VARCHAR(300) NOT NULL,
  address_id INT,
  FOREIGN KEY (address_id) REFERENCES addresses (id) -- default NO ACTION
  -- FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE -- MySql
  -- address_id INT REFERENCES addresses (id) ON DELETE RESTRICT -- PosgreSQL
);