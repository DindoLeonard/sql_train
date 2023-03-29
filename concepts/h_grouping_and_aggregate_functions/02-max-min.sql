-- SELECT MAX(num_seats) FROM tables;
-- SELECT MIN(num_seats) FROM  tables;
-- SELECT MIN(*) FROM tables; -- this wont work
-- SELECT MAX(amount_billed) AS max_billed, MAX(amount_tipped) AS max_tipped FROM bookings;
-- SELECT MIN(category), MAX(category) from tables;

-- also works with DATES
SELECT MIN(booking_date), MAX(booking_date) FROM bookings;

