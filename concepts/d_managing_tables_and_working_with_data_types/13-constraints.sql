-- example of adding NOT NULL
-- CREATE TABLE users (
--   full_name VARCHAR(300) NOT NULL,
--   -- ...
-- )

ALTER TABLE users
-- ALTER COLUMN full_name SET NOT NULL, -- postgresql
-- ALTER COLUMN current_status SET NOT NULL; -- postgresql
MODIFY COLUMN full_name VARCHAR(300) NOT NULL, -- mysql
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL; -- mysql