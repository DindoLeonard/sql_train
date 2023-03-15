## CRUD Operations

- CREATE
  - INSERT INTO
- READ
  - SELECT
- UPDATE
  - UPDATE
- DELETE
  - DELETE

---

## Inserting data

- insert values into columns
  - ```sql
    INSERT INTO <table_name> (<column_names>)
    VALUES(<column_values>);
    ```
- insert multiple rows in one single command
  - ```sql
    INSERT INTO <table_name> (<column_names>)
    VALUES
      (<column_values>), -- row1
      (<column_values>), -- row2
    ```
- insert values returned by a query
  - ```sql
    INSERT INTO <table_name> (<column_names>)
    SELECT <query>;
    ```

## Selecting data

- fetch values for the specified columns from the specified table - but only for records (rows) where the condition is met

```sql
SELECT <columns> FROM <table_name> WHERE <conditions>
```

## Updating data

- Update all indentified rows in a specified table and set the specified columns to new values
- Multiple rows can be updated in one operation (if the condition is met by multiple rows)

```sql
UPDATE <table_name>
SET <column_name> = <new_value>, <column_name2> = <new_value2>
WHERE <condition>;
```

## Deleting data

- Delete all identified rows in a specified table
- Multiple rows can be delete in one operation (if the condition is met by multiple rows)

```sql
DELETE <table_name>
WHERE <condition>;
```

## WHERE

- =, IS...
  - check for equality
  - "=" for most cases
  - "IS..." for comparison to NULL (and others)
- <>, !=, IS NOT...
  - Check for inequality
  - "!=" is an alias for "<>"
  - IS NOT... for comparison to NULL (and others)
- ">" / ">="
  - Check for greater than / greater than or equal
  - BETWEEN
- "<" / "<="
  - Check for smaller than / smaller than or equal
  - BETWEEN
- AND, OR
  - Combine multiple conditions

---

## Sorting / Ordering Results

- Sort the selected data in ascending order

```sql
SELECT * FROM example_table
ORDER BY example_column;
```

- Sort the selected data in descending order (you could specify ASC but that would be the default)

```sql
SELECT * FROM example_table
ORDER BY example_column DESC;
```

## Limit & Distinct

- Select only the first X number of rows (can be combined with sorting)

```sql
SELECT * FROM example_table
LIMIT 10; -- <number X>;
```

- Select X number of rows after skipping Y number of rows

```sql
SELECT * FROM example_table
LIMIT 10
OFFSET 50;
```

- Drop any duplicates in the result set

```sql
SELECT DISTINCT * FROM example_table;
```

## View

- to define and store queries and store it in a view
- so that you won't have to type the query all the time

```sql
CREATE VIEW AS SELECT * FROM sales WHERE volume > 1000;
```
