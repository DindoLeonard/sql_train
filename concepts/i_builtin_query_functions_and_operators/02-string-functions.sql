-- SELECT * FROM memberships;

-- TEXT SEARCH
-- SELECT * FROM memberships WHERE first_name REGEXP 'ax'; -- mysql
-- SELECT * FROM memberships WHERE first_name ~ 'ax'; -- postgresql


-- SELECT CONCAT(first_name,' ',last_name)
-- FROM memberships; -- mysql

-- SELECT first_name || ' ' || last_name FROM memberships; -- postgresql

-- SELECT CONCAT('$ ', price) FROM memberships;


-- INSERT INTO memberships (
--     membership_start,
--     membership_end,
--     last_checkin,
--     last_checkout,
--     consumption,
--     first_name,
--     last_name,
--     price,
--     billing_frequency,
--     gender

-- )
-- VALUES (
--     '2021-10-18',
--     '2021-11-18',
--     '2021-11-01 08:56:01',
--     '2021-11-01 09:20:12',
--     NULL,
--     'John',
--     'Doe',
--     19.99,
--     12,
--     LOWER('DivErs') -- here
-- );


-- SELECT * FROM memberships
-- WHERE LENGTH(first_name) < 4;

-- INSERT INTO memberships (
--     membership_start,
--     membership_end,
--     last_checkin,
--     last_checkout,
--     consumption,
--     first_name,
--     last_name,
--     price,
--     billing_frequency,
--     gender

-- )
-- VALUES (
--     '2021-05-02',
--     NULL,
--     '2021-06-05 11:52:25',
--     '2021-06-05 11:58:08',
--     NULL,
--     'Monti',
--     'Durns',
--     199.99,
--     1,
--     TRIM(BOTH ' ' FROM 'male   ') -- here
-- );

SELECT gender, LENGTH(gender) FROM memberships;