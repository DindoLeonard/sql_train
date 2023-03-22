-- SELECT users.first_name, addresses.street, addresses.house_number
-- FROM users INNER JOIN addresses ON users.address_id = addresses.id;

-- add alias
-- SELECT u.first_name, a.street, a.house_number
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id;

-- SELECT last_name, street FROM users
-- INNER JOIN addresses ON users.id = addresses.id;

-- select u.id, u.email, u.last_name, a.street, a.house_number FROM users AS u
-- INNER JOIN addresses as a ON u.address_id = a.id;

-- multiple JOIN
-- SELECT u.id, u.first_name, u.last_name, u.email, a.street, a.house_number, c.name as city_name FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id
-- INNER JOIN cities AS c ON a.city_id = c.id;

-- SELECT * FROM addresses AS a
-- LEFT JOIN users AS u ON a.id = u.address_id;

SELECT first_name AS name, password AS pw, birthdate AS birth from employees as e
INNER JOIN intranet_accounts as i ON e.email = i.email;