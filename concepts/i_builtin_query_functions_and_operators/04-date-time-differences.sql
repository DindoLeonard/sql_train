-- postgresql
-- SELECT 
--   first_name,
--   last_checkin,
--   last_checkout,
--   last_checkout - last_checkin
-- FROM memberships;

-- mysql
-- SELECT
--   first_name,
--   last_checkin,
--   last_checkout,
--   TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
-- FROM memberships;

-- posgresql
-- SELECT 
--   membership_start,
--   membership_end,
--   membership_end - membership_start
-- FROM memberships;

-- mysql
-- SELECT
--   membership_start,
--   membership_end,
--   -- DATEDIFF(membership_end, membership_start)
--   DATEDIFF(NOW(), membership_start)
-- FROM memberships;

-- postgresql
-- SELECT
--   first_name,
--   membership_start,
--   membership_end,
--   NOW() - membership_start
-- FROM memberships;