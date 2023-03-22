CREATE TABLE projects (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- PostgreSQL
  title VARCHAR(300) NOT NULL,
  deadline DATE
);

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY, -- PostgreSQL
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL
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