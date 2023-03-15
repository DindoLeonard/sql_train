-- SELECT customer_name, product_name FROM (SELECT * FROM sales WHERE volume > 1000) as base_results;

-- CREATE VIEW base_results AS SELECT * FROM sales WHERE volume > 1000;

SELECT customer_name, product_name FROM base_results;