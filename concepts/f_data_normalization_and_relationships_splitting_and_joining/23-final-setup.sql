CREATE TABLE projects (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- PostgreSQL
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

CREATE TABLE company_buildings (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- PostgreSQL
  name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
  id INT PRIMARY KEY AUTO_INCREMENT,
  -- id SERIAL PRIMARY KEY, -- PostgreSQL
  name VARCHAR(300) NOT NULL,
  building_id INT,
  -- building_id INT REFERENCES company_buildings (id) -- PostgreSQL
  FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL -- MySQL
);

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- PostgreSql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  -- FOREIGN KEY (email) REFERENCES intranet_accounts (email) -- MySql
  -- email VARCHAR(300) REFERENCES intranet_accounts (email) -- PostgreSQL
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT,
  -- team_id INT REFERENCES teams (id) ON DELETE SET NULL
  FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET NULL
);

CREATE TABLE intranet_accounts (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, --PostgreSQL
  email VARCHAR(200) NOT NULL,
  -- email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE -- PostgreSQL
  password VARCHAR(200) NOT NULL,
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
);

-- Intermediate table => n:n
CREATE TABLE projects_employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- PostgreSQL
  -- employee_id INT REFERENCES employees (id) ON DELETE CASCADE, --
  -- employee_id INT REFERENCES employees (id) ON DELETE CASCADE,
  employee_id INT,
  project_id INT,
  FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE,
  FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE
);