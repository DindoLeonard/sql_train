-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html
-- https://www.postgresql.org/docs/current/functions-datetime.html
-- SELECT * FROM memberships;

-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin FROM memberships;

-- SELECT EXTRACT(DAY FROM last_checkin), last_checkin FROM memberships;

-- SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin FROM memberships;

-- postgresql day of the week, sunday is 0, sat is 6
-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin FROM memberships; 

-- mysql, 0 for monday up to 6 for sunday
-- SELECT WEEKDAY(last_checkin), last_checkin FROM memberships;

-- MySQL CONVERT
-- SELECT last_checkin, CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
-- FROM memberships;

-- PostgreSQL CONVERT
SELECT last_checkin, last_checkin::TIMESTAMP::DATE as date, last_checkin::TIMESTAMP::TIME as time
FROM memberships;