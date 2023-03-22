-- SELECT c.name AS city_name, street, house_number, u.first_name, u.last_name
-- FROM cities as c
-- LEFT JOIN addresses AS a ON c.id = a.city_id
-- LEFT JOIN users AS u ON u.address_id = a.id
-- WHERE u.first_name IS NOT NULL;

SELECT c.name AS city_name, street, house_number, u.first_name, u.last_name
FROM cities as c
LEFT JOIN addresses AS a ON c.id = a.city_id
LEFT JOIN users AS u ON u.address_id = a.id;