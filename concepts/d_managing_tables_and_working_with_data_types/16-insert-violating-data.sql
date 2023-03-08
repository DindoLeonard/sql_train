-- to test the constraint
-- it will fail because it violates the 'yearly-salary-positive' constraint added from the previous file
INSERT INTO users (full_name, yearly_salary, current_status)
VALUES ('Ichigo Kurosaki', -1000, 'unemployed');