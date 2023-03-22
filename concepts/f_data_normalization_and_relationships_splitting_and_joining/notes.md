## Data normalization

- A concept that reduces data redundancy and increases data maintainability
- Goal: Split compound and grouped data into multiple, standalone values
  - from "full_name : Maximilian Schwarzmuller"
  - to "first_name: Maxilimilian" "last_name: Schwarzmuller"

## The different forms

- 1NF (First Normal Form)
  - Each table cell (column + row) should contain a single value Each row (record) should be unique
- 2NF (Second Normal Form)
  - There are no duplicate row values because of multi-column keys (composite keys)
- 3NF (Third Normal Form)
  - All column values in a row are dependent on only the primary key
- BCNF (3.5NF) or (Boyce-Codd Normal Form)
  - There must be no conflict unique identification criteria (i.e. column value
    combinations) -> Avoid multiple entities in one table
- 4NF (Fourth Normal Form)
  - All combinations of all (non-key) cell values should be possible
- 5NF (Fift Normal Form)
  - There are no clashing column values because of implicit column dependencies

### Simple rule of normalization for humans

- Avoid mixing data entities in the same table, avoid multiple values in
  a single table cell but also try to avoid splitting basic data across dozens
  of tables!
- One Table = One Data Entity
- One Cell = One Value
- And there might be more data entities than it might first look like!

---

## INNER JOIN

- will join a table that will match the filter

```sql
SELECT u.id, first_name, last_name, street, house_number, c.name as city_name FROM users AS u
INNER JOIN addresses as a ON u.address_id = a.id
INNER JOIn cities as c ON a.city_id = c.id;
```

---

## LEFT JOIN

- Retains the left table even if the right table doesn't have any matches or even if the matches is null
- left table is the query before any join using the next table

```sql
SELECT * FROM addresses AS a -- left table
LEFT JOIN users AS u ON a.id = u.address_id;
```

---

## RIGHT JOIN

- same as left join

```sql
RIGHT JOIN is the same as left join
SELECT * FROM users AS u
RIGHT JOIN addresses AS a ON a.id = u.address_id
LEFT JOIN cities AS c ON c.id = a.city_id
ORDER BY a.id DESC;
```

---

## CROSS JOIN

- join all combination between tables

---

## UNION

- False Friend: UNION
- UNION is a clause that combines multiple result sets into one result set by appending rows

```sql
SELECT * FROM users WHERE id < 3
UNION
SELECT * FROM users WHERE id = 3;
```

- JOIN clauses merge multiple tables into one result set by appending columns

```sql
SELECT u.id, name, street, city
FROM users AS u
INNER JOIN addresses AS a
ON a.id = u.address_id;
```

- should have the same columns

---

## Foreign Key Constraints

- example:

```sql
-- PosgreSQL
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  address_id INT REFERENCES addresses (id) ON DELETE CASCADE
);
```

- REFERENCES
  - Defined the related table + column
- ON DELETE && ON UPDATE
  - Defined the action that should be executed if a related row is deleted or updated

```sql
-- PostgreSQL
CREATE TABLE users(
  address_id INT REFERENCES addresses (id) ON DELETE CASCADE
)

-- MySQL
CREATE TABLE users(
  address_id INT,
  FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE
)
```

## ON DELETE & ON UPDATE

- RESTRICT
  - Prevent the intended action (e.g. deleting a related row)
- NO ACTION (default)
  - Prevent the intended action (e.g. deleting a related row), check can be deferred, e.g. as part of transaction
- CASCADE
  - Perform the same action (e.g. deleting a related row) in the row with the foreign key
- SET NULL
  - Set the foreign key value to NULL if the related row was deleted
- SET DEFAULT
  - Set the foreign key value to its DEFAULT value if the related row was deleted

---

## Different Kinds of Data Relationships

- One to Many (1:n)
  - One record in table A has one or many related records in table B
  - e.g. an employee belongs to one company but a company has many employees
- Many-to-many (n:n)
  - One record in table A has one or many related tables in table B - and vice versa
  - e.g. an employee is part of multiple projects and every project has multiple employees assigned to it
- One-to-One (1:1)
  - One record in table A belongs to exactly one record in table B - and vice versa
  - e.g. an employee has exactly one intranet account and every intranet account belongs to exactly one employee
