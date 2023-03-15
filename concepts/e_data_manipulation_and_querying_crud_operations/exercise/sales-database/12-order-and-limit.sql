-- SELECT * FROM sales
-- ORDER BY date_created DESC;

-- SELECT * FROM sales
-- ORDER BY volume
-- LIMIT 10;

-- SELECT * FROM sales
-- WHERE is_disputed IS FALSE
-- ORDER BY volume DESC, customer_name -- priority in sorting is volume
-- LIMIT 3;

SELECT * FROM sales
ORDER BY volume DESC
LIMIT 5
OFFSET 3;
