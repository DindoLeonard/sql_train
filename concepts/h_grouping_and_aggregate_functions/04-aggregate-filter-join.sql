
-- SELECT ROUND(AVG(amount_tipped), 2) FROM bookings
-- WHERE amount_billed > 20 AND num_guests > 2;

-- SELECT MAX(bookings.num_guests) AS max_guests, MAX(tables.num_seats) AS max_seats FROM bookings
-- INNER JOIN tables ON bookings.table_id = tables.id;

SELECT MAX(bookings.num_guests) AS max_guests, MAX(tables.num_seats) AS max_seats FROM bookings
INNER JOIN tables ON bookings.table_id = tables.id
INNER JOIN payment_methods ON bookings.payment_id = payment_methods.id
WHERE tables.num_seats < 5 AND payment_methods.name = 'Cash';
