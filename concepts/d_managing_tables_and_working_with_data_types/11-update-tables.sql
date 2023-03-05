-- ALTER TABLE employers
-- ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT; -- Posgresql

ALTER TABLE employers
-- MODIFY COLUMN yearly_revenue FLOAT(5,2); -- mysql deprecated
MODIFY COLUMN yearly_revenue FLOAT; -- you can now use float without arguments