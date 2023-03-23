## REMEMBER

- Primary keys don't have to be auto-incrementing integers

---

## Composite Primary Keys

- Primary keys can span multiple columns

```sql
CREATE TABLE projects_employees (
  employee_id INT,
  project_id INT,
  PRIMARY KEY (employee_id, project_id), -- combinations of these are unique
  FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE,
  FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE,
);
```

---

## Different Ways of Defining Primary and Foreign Keys

---

## Self-Referential Relationships

- A data entity has a relationship to itself (i.e. internal relationship)
- creating

```sql
CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- Mysql
  -- ID SERIAL PRIMARY KEY -- Postgresql
  supervisor_id INT,
  FOREIGN KEY (supervisor_id) REFERENCES employees (id) ON DELETE SET NULL
);
```

- querying

```sql
SELECT * FROM employees AS e1
INNER JOIN employees AS e2 ON e1.supervisor_id = e2.id;
```

---

## Self-referential many-to-many relationship
