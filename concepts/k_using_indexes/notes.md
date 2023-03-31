- What are indexes?
  - And why would you use them?
- Different types of indexes
- Indexes in action

## What are indexes

- index can enhance query performance
- values are stored in a sorted extra table.
  - A connection to the original row is stored doing with an index value

## Do not use too many indexes

- The problem with too many indexes
  - whenever index values change, the values have to be updated in both the original table AND the index table

## Different types of indexes

- Technical implementation
  - B-Tree (default)
  - Hash
  - Gist
  - etc...
- Kind of Index / Functionality
  - Starndard single-column index
  - Unique index
  - Multi-column index (composite index)
  - Partial index (Not in MySql)

---

### More on Creating & Dropping Indexes

- Besides creating indexes via CREATE INDEX, you can also add an index to a table right when creating that table - like this:

```sql
CREATE TABLE <table_name> (
... column definitions,
INDEX <index_name> (<column>)
);

CREATE TABLE example (
  id INT PRIMARY KEY AUTO_INCREMENT,
  example_num INT NOT NULL,
  INDEX example_num_index (example_num)
);
```

- Please note that this is supported when using `MySQL` but it won't work with `Postgresql`.

- You should always dive into the documentation of the database system you're using, to learn which features / syntax is available!

- If you want to get rid of an index, you can also always do that via

```sql
DROP INDEX <index_name>.
```
