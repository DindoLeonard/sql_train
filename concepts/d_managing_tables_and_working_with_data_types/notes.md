# Data Definition: Managing Tables & Working with Data Types

## Database & Table Heirarchy

- Database (Schema)
  - Tables
    - Data
- You can group tables into schema

## Conventions

- naming is lowercased
- space is replaced with underscore

---

- We are going to build a database for an app called "Talentyly"
  - tables
    - employers
      - company_name
      - company_address
      - yearly_revenue
      - is_hiring
    - users
      - name
      - yearly_salary
      - status
      - employer
    - converstations
      - user
      - employer
      - message
      - date_sent

## Creating a new database

```sql
CREATE DATABASE <db_name>
```

# Key Data Types / Value Types

- Text

  - 3 main

    - CHAR(x)
      - specify the characters
    - VARCHAR(x)
      - up to a given length text
    - TEXT, LONGTEXT
      - No maximum length
    - ENUM

      - only allow specified text
      - MySQL
        ```sql
        CREATE TABLE user (
          current_status ENUM('v1', 'v2')
        )
        ```
      - PostgreSQL

        ```sql
        Create TYPE my_status as ENUM('v1', 'v2');

        CREATE TABLE user (
          current_status my_status
        )
        ```

- Numeric

  - INT, SMALLINT, BIGINT
    - whole number
  - DECIMAL, NUMERIC
    - allow decimal
  - FLOAT, REAL
    - numbers with decimal but not stored exactly

- Date

  - DATE
    - a value like 1986-10-20 (no hours or minutes)
  - DATETIME, TIMESTAMP
    - a value like 1986-10-20 14:39:05 (with hours, minutes, etc)

- Other
  - Boolean
    - True or False (0 or 1)
  - JSON
    - Allowes JSON-formatted text-data

## What about Files?

- File is not such a primitive simple piece of data
- You should store it some dedicated file storages
- Only store the path to the database

## What about date timezone?

- It will be automatically stored using UTC timezone
- if you will run a SELECT query, it will then be converted again to what timezone you are currently in base on your location

## Null values

- important because if there's a Zero and you do not want for it to be included, NULL is a good data type for it not to be included in some SQL functions like AVG()
- non-existent data
- NOT NULL constraint can be set into columns
  ```sql
  CREATE TABLE users (
    full_name VARCHAR(255) NOT NULL,
    salary INT -- NULL is allowed because it's not forbidden
  )
  ```

## The role & importance of Unique IDs

When storing data, each data entry should have atleast one unique value (for identifying the record)

instead of this

```sql
CREATE TABLE users(
  id INT NOT NULL UNIQUE,
  full_name VARCHAR(255) NOT NULL,
  salary INT
);
```

you could do this

```sql
CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT, -- PRIMARY KEY is equal "NOT NULL UNIQUE"
  full_name VARCHAR(255) NOT NULL,
  salary INT
);

```

- you can only have one "PRIMARY KEY" per table
- AUTO_INCREMENT is an "Attribute"
  - the db system will automatically insert an incrementing value
  - this is only supported in MySQL
- in PostgreSQL you use SERIAL PRIMARY KEY instead of INT PRIMARY KEY AUTO_INCREMENT like this:
- does not use AUTO_INCREMENT attribute but a SERIAL data type
- under the hood is just an integer that auto-increments
- SERIAL PRIMARY KEY is also supported in MySQL
- if you use SERIAL PRIMARY KEY in MySQL, it will store it as BIGINT data type

```sql
CREATE TABLE user(
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(255) NOT NULL,
  salary INT
);
```

---

## Constraints

- Resitrict which values can actually be inserted into a column
  - NOT NULL
    - a value must be provided
  - UNIQUE
    - no duplicate values allowed
  - PRIMARY KEY
    - UNIQUE and NOT NULL combined
  - CHECK
    - value must pass a specific check
  - FOREIGN KEY
    - value must exist in another table
- Column constraint
  - add specific contraint to the table column directly
  ```sql
  salary INT CHECK (salary > 0)
  ```
- Table constraint
  - add extra row in the after column definition
  ```sql
  saalry INT,
  CHECK (salary > 0)
  ```

---

## Text:Encoding & Collation

- Encoding
  - Which characters are supported and can be stored
  - Not all encodings support all characters
  - Encodings can be set on database, table or column level
- Collation
  - How are characters compared?
  - Different collations contol "who wins" in comparison
  - Collation can be set on database, table or column level

---

## More ways of creating tables

- Temporary tables

  ```sql
  CREATE TEMPORARY TABLE example()
  ```

  - tables that are only stored temporarily (in memory of the database server)
  - useful for non-permanent data (e.g intermediate results)

- Tables based on other tables/data
  ```sql
  CREATE TABLE films_recent as SELECT * FROM films WHERE data_prod >= '2022-01-01';
  ```
  - where you create a subset of table from another table

## Generated Columns

- Most supported by MySQL
- will generate a column base on the query
- example:

```sql
CREATE TABLE user (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  full_name VARCHAR(401) GENERATED ALWAYS AS (CONTACT(first_name,' ', last_name)) -- the extra 1 byte is for the space 200 + 200 + 1 = 400
);
```
