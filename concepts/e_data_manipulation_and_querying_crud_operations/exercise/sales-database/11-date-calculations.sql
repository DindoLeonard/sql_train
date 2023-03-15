-- SELECT * FROM sales;

-- This below is when working with time-stamps and you only wanted to extract the days from it.
-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;

-- Find all sales fulfilled <= 5 days after creation date
SELECT * FROM sales
WHERE date_fulfilled - date_created <= 5;