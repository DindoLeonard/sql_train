-- SELECT * FROM sales
-- WHERE volume > 1000;

-- SELECT * FROM sales
-- WHERE is_recurring IS NOT FALSE AND volume < 1000;

-- SELECT * from sales
-- WHERE is_disputed IS TRUE AND volume > 50000;

SELECT * from sales WHERE (is_disputed IS TRUE) AND (volume > 1000);