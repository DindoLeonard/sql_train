-- MySQL & PostgreSQL
-- users
INSERT INTO users (yearly_salary, full_name, current_status) VALUES (25000, 'Solo Leveling', 'employed');

INSERT INTO users (yearly_salary, full_name, current_status) VALUES(0, 'Naruto Uzumaki', 'unemployed')

-- employers
INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Konohagakure', 'Konoha', 0.87, TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue)
VALUES ('Yorozuya', 'Kabukicho', 199.55);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Toman', 'Tokyo', 6.12, TRUE);

-- conversations
INSERT INTO conversations (user_name, employer_name, message)
VALUES ('Naruto Uzumaki', 'Toman', 'Hi I am the hokage');