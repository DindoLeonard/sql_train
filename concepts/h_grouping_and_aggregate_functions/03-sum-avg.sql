-- SELECT SUM(amount_billed) FROM bookings;
-- average ignores null values
-- SELECT * FROM bookings; -- it has 2 null values
SELECT ROUND(AVG(amount_tipped), 2) FROM bookings;
