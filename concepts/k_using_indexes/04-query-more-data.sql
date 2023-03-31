EXPLAIN ANALYZE
-- 11 scan rows if no index
SELECT * FROM addresses
WHERE street = 'Teststreet' AND city = 'Munich';