-- SELECT email FROM customers;

-- SELECT * FROm customers;

-- SELECT email FROM customers as c
-- INNER JOIN orders AS o ON c.id = o.customer_id;

-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max' OR first_name = 'Manu';

-- SELECT id
-- FROM customers
-- WHERE first_name IN('Max', 'Manu');

-- SELECT id, first_name
-- FROM customers
-- WHERE first_name NOT IN('Max', 'Manu');



-- this here: 
-- SELECT DISTINCT email FROM customers
-- INNER JOIN orders ON customers.id = orders.customer_id;

-- is the same as in here:
-- select the email of customers that placed an order
-- SELECT email
-- FROM customers
-- WHERE id IN(
--   SELECT customer_id
--   FROM orders
-- );
