-- postgres
-- ALTER TABLE users
-- ALTER COLUMN full_name SET DATA TYPE VARCHAR(300);

-- mysql
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300);