SELECT u.id, first_name, last_name, street, house_number, c.name as city_name FROM users AS u
INNER JOIN addresses as a ON u.address_id = a.id
INNER JOIn cities as c ON a.city_id = c.id;