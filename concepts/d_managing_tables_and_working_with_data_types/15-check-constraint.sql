-- if you wanna add constraint during creation of table
-- CREATE TABLE users (
--   full_name VARCHAR(300),
--   yearly_salary INT CHECK (yearly_salary > 0)
-- );

-- to set the 0 to null
-- UPDATE users
-- SET yearly_salary = NULL
-- WHERE yearly_salary = 0;

ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0);
