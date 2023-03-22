-- RIGHT JOIN is the same as left join
-- SELECT * FROM users AS u
-- RIGHT JOIN addresses AS a ON a.id = u.address_id
-- LEFT JOIN cities AS c ON c.id = a.city_id
-- ORDER BY a.id DESC;

SELECT * FROM addresses AS a
LEFT JOIN users AS u ON a.id = u.address_id
LEFT JOIN cities AS c ON c.id = a.city_id
ORDER BY a.id DESC;
