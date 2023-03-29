
SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (
  SELECT MIN(daily_sum) -- this is nested
  FROM (
    SELECT booking_date, SUM(amount_billed) as daily_sum -- this is nested
    FROM bookings
    GROUP BY booking_date
  ) as daily_table
);