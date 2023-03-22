CREATE TABLE users (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgresql
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  address_id INT NOT NULL -- same type with the primary key and not null means it is always required to have a relation to address
);

CREATE TABLE addresses (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgresql
  street VARCHAR(300) NOT NULL,
  house_number VARCHAR(20) NOT NULL,
  city_id INT NOT NULL
);

CREATE TABLE cities (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
  id SERIAL PRIMARY KEY, -- postgresql
  name VARCHAR(300) NOT NULL
);
