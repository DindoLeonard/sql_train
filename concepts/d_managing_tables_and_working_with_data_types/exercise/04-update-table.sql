-- MySQL
ALTER TABLE products
MODIFY COLUMN name VARCHAR(255) NOT NULL,
MODIFY COLUMN price FLOAT NOT NULL CHECK(price > 0),
MODIFY COLUMN amount_in_stock INT CHECK(amount_in_stock >= 0);

-- PostgreSQL
-- ALTER TABLE products
-- ALTER COLUMN name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN description SET NOT NULL,
-- ADD CONSTRAINT price_positive CHECK (price > 0),
-- ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0);