-- SELECT * FROM sales;

SELECT 
 'Hello world' as word, -- this is added
  15000 as amount, -- added
  date_created as createdAt,
  customer_name as customerName,
  product_name as productName,
  volume / 1000 AS totalSales -- can also use expression
FROM sales;
