-- SELECT b.booking_date, SUM(num_guests) FROM bookings AS b
-- GROUP BY b.booking_date;

-- SELECT DISTINCT booking_date FROM bookings;


-- SELECT booking_date, SUM(num_guests) FROM bookings
-- GROUP BY booking_date;

-- SELECT p.name, SUM(num_guests) 
-- FROM payment_methods AS p
-- INNER JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY p.name;

SELECT p.name, b.booking_date, SUM(num_guests), ROUND(AVG(amount_tipped), 2) 
FROM payment_methods AS p
INNER JOIN bookings AS b ON p.id = b.payment_id
GROUP BY p.name, b.booking_date;