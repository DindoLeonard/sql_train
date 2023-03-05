CREATE TABLE conversations (
  user_name VARCHAR(200),
  employer_name VARCHAR(250),
  message TEXT, -- can store characters of any length
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);