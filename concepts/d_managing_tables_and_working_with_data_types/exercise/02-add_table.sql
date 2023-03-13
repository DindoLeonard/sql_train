-- DROP TABLE products;

CREATE TABLE products (
  name VARCHAR(255),
  price FLOAT,
  -- price NUMERIC(10,2) -- 8.99, 12345.99
  description TEXT,
  amount_in_stock INT,
  image_path VARCHAR(2048)
);