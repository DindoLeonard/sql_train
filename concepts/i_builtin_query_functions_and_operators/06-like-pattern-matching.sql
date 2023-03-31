-- LIKE is looking for exactness
-- LIKE is case-sensitive for postgresql (use ILIKE instead)
-- LIKE is not case-sensitive for mysql
-- % can be put before or afterwards
-- %o% find anything that has an o in a text
-- ma% find anything that starts with "ma"
-- %ti find anything that ends with ti
-- SELECT first_name LIKE '%u%', first_name
-- FROM memberships;

-- _ is a placeholder for any character
-- SELECT first_name LIKE '_o%', first_name
-- FROM memberships;

-- SELECT first_name
-- FROM memberships
-- WHERE first_name LIKE 'J____';

-- posgresql
-- SELECT first_name ILIKE 'ma%', first_name
-- FROM memberships;