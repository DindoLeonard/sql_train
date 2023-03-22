CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- PostgreSql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  -- FOREIGN KEY (email) REFERENCES intranet_accounts (email) -- MySql
  -- email VARCHAR(300) REFERENCES intranet_accounts (email) -- PostgreSQL
  email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_accounts (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, --PostgreSQL
  email VARCHAR(200) NOT NULL,
  password VARCHAR(200) NOT NULL,
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
);