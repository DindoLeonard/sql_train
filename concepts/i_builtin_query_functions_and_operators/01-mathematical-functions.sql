-- SELECT price * billing_frequency AS annual_revenue
-- FROM memberships;

-- SELECT price * billing_frequency AS annual_revenue
-- FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUND()
-- TRUNC() TRUNCATE() mysql

SELECT consumption,
CEIL(consumption),
FLOOR(consumption),
ROUND(consumption, 1),
-- TRUNCATE(consumption, 1) -- mysql
TRUNC(consumption, 1) -- postgresql
FROM memberships;