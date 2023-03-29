-- SELECT COUNT(*) FROM bookings;
-- SELECT COUNT(amount_tipped) FROM bookings;
-- DISTINCT will only count similar values as one
SELECT COUNT(DISTINCT booking_date) FROM bookings;