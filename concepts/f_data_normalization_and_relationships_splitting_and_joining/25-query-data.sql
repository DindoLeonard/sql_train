-- SELECT e.first_name as employee_name, i.email AS email, t.name AS team_name, b.name AS building_name, p.id AS project_id, p.deadline AS deadline from employees as e
-- INNER JOIN intranet_accounts AS i ON e.email = i.email
-- INNER JOIN teams AS t ON e.team_id = t.id
-- INNER JOIN company_buildings AS b ON t.building_id = b.id
-- INNER JOIN projects_employees AS pe ON pe.employee_id = e.id
-- INNER JOIN projects AS p ON p.id = pe.project_id WHERE p.id = 2;

-- Left join means, keep the left record and just add another record on the side even if it is NULL
-- SELECT e.id AS employee_id, e.first_name, e.last_name, p.title FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id
-- LEFT JOIN projects AS p ON pe.project_id = p.id;

-- SELECT e.id AS employee_id, e.first_name, e.last_name, t.name
-- FROM employees AS e
-- INNER JOIN teams as t ON e.team_id = t.id WHERE t.id = 2;

SELECT e.id AS employee_id, e.first_name, e.last_name, b.name as building_name FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings as b ON t.building_id = b.id
WHERE b.id = 3
ORDER BY e.id DESC;