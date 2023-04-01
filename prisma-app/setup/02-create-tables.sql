CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

CREATE TABLE company_buildings (
  id SERIAL PRIMARY KEY,
  name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY, -- PostgreSQL
  name VARCHAR(300) NOT NULL,
  building_id INT,
  FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL
);

CREATE TABLE employees (
  id SERIAL PRIMARY KEY, -- PostgreSql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET NULL
);

CREATE TABLE intranet_accounts (
  id SERIAL PRIMARY KEY, --PostgreSQL
  email VARCHAR(200) NOT NULL,
  password VARCHAR(200) NOT NULL,
  FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
);

-- Intermediate table => n:n
CREATE TABLE projects_employees (
  -- id SERIAL PRIMARY KEY, -- PostgreSQL
  employee_id INT,
  project_id INT,
  PRIMARY KEY (employee_id, project_id),
  FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE,
  FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE
);