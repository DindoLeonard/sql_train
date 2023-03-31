-- SELECT * FROM orders;

-- above 30 amount_billed is good day
-- above 15 or 10 is normal day
-- other is bad day
-- SELECT amount_billed,
--   CASE WHEN amount_billed > 30 THEN 'Good Day'
--     WHEN amount_billed > 15 THEN 'Normal Day'
--     ELSE 'Bad day'
--   END
-- FROM orders;

-- SELECT WEEKDAY(last_checkin) + 1 AS dayofweek, last_checkin,
--   CASE WHEN WEEKDAY(last_checkin) + 1 = 1 THEN 'Monday'
--     WHEN WEEKDAY(last_checkin) + 1 = 2 THEN 'Tuesday'
--     WHEN WEEKDAY(last_checkin) + 1 = 3 THEN 'Wednesday'
--     WHEN WEEKDAY(last_checkin) + 1 = 4 THEN 'Thursday'
--     WHEN WEEKDAY(last_checkin) + 1 = 5 THEN 'Friday'
--     WHEN WEEKDAY(last_checkin) + 1 = 6 THEN 'Saturday'
--     WHEN WEEKDAY(last_checkin) + 1 = 7 THEN 'Sunday'
--   END
-- FROM memberships;

SELECT weekday_nr,last_checkin,
  CASE WHEN weekday_nr = 1 THEN 'Monday'
    WHEN weekday_nr = 2 THEN 'Tuesday'
    WHEN weekday_nr = 3 THEN 'Wednesday'
    WHEN weekday_nr = 4 THEN 'Thursday'
    WHEN weekday_nr = 5 THEN 'Friday'
    WHEN weekday_nr = 6 THEN 'Saturday'
    ELSE 'Sunday'
  END
FROM (
  SELECT WEEKDAY(last_checkin) + 1 AS weekday_nr, last_checkin
  FROM memberships
) AS weekday_numbers;

