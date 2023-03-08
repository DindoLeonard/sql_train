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
