-- SELECT * FROM sales;

-- SELECT * FROM sales
-- WHERE date_created > '2023-03-01' AND date_created < '2023-03-19';

-- SELECT * FROM sales
-- WHERE date_created BETWEEN '2023-03-01' AND '2023-03-19';

-- SELECT * FROM sales
-- WHERE volume > 1000 AND volume < 100000;

SELECT * FROM sales
WHERE volume BETWEEN 1000 AND 100000;