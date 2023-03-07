-- MySQL
-- users
CREATE TABLE users (
  full_name VARCHAR(300),
  yearly_salary INT,
  current_status ENUM('employed', 'self-employed', 'unemployed')
);

CREATE TABLE employers (
  company_name VARCHAR(250),
  company_address VARCHAR(300),
  yearly_revenue FLOAT,
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
  user_name VARCHAR(300),
  employer_name VARCHAR(250),
  message TEXT,
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- PostgreSQL
-- CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

-- CREATE TABLE users (
--   full_name VARCHAR(300),
--   yearly_salary INT,
--   current_status employment_status,
-- );

-- CREATE TABLE employers (
--   company_name VARCHAR(300),
--   company_address VARCHAR(250),
--   yearly_revenue FLOAT,
--   is_hiring BOOLEAn DEFAULT FALSE
-- );

-- CREATE TABLE conversations (
--   user_name VARCHAR(300),
--   employer_name VARCHAR(250),
--   message TEXT,
--   date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );