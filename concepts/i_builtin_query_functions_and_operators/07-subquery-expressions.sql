-- SELECT first_name, last_name
-- FROM customers
-- WHERE email = 'max@test.com';

-- SELECT EXISTS(
--   SELECT first_name, last_name
--   FROM customers
--   WHERE email = 'max@test.com'
-- );

-- SELECT o.id
-- FROM orders AS o
-- WHERE EXISTS(
--   SELECT email
--   FROM customers as c
--   WHERE o.customer_id = c.id AND c.email = 'max@test.com'
-- );

-- customer_id 1 is 'max@test.com'
-- same as writing:
-- SELECT * FROM orders WHERE customer_id = 1;
SELECT * FROM orders AS o WHERE EXISTS(
  SELECT * FROM customers AS c WHERE o.customer_id = c.id AND c.email = 'max@test.com'
);