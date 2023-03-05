# SQL Basics: Syntax & Core Features

- SQL statement ends with a semicolon ";"
- All parts are called Tokens
- Keywords,
  - like SELECT, FROM, WHERE
- identifiers
  - defined the columns where the information to retrieve from and where it is located
- Clauses: "SELECT name, salary FROM employees WHERE salary > 8000;" has three different clauses
- SELECT name salary
- FROM elmployees
- WHERE salary > 8000

## Core SQL Syntax Rules

- SQL statements must end with semicolons - if you got more than one SQL
  statement in the same command
- A single SQL statment in a command doesn't need a semicolon at the end
- SQL statements are case-insensitive - SELECT is the same as select
- Identifiers (e.g table names, column names) can be surrounded wit a double
  quotes (backticks in MySQL) to avoid clashes with built-in Keywords
  - example: `SELECT "select" from "from"`
- Statements can consist of one or more clauses - but the order of the clause
  must be correct (e.g SELECT before FROM and WHERE)

## Data Definition Statements vs Data Manipulation Statements

- Data Definition
  - Query statments that define databases, tables & table structures
  - Table constraints & relatonships
  - Database & table managements (e.g altering tables, dropping tables)
- Data Manipulation

  - Query statements that manipulate (insert, update & delete) or fetch databases
  - May join, filter or sort data
  - Use databases & tables that were created via "Data Definition Statements"

- By logic, database definition always comes first before data manipulation
