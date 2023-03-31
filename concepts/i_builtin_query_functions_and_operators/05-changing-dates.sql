-- posgresql
-- SELECT
--   membership_start + 7,
--   membership_start
-- FROM memberships;

-- mysql
-- SELECT
--   DATE_ADD(membership_start, INTERVAL 7 DAY),
--   membership_start
-- FROM memberships;

-- postgresql
SELECT
  (membership_start + INTERVAL '7 DAY')::TIMESTAMP::DATE, -- get timestamp difference and convert to date
  membership_start
FROM memberships;

