# Installing Different Database Management Systems

- MySQL
- PostgreSQL

# What we need to Install

- 2 key parties (Client <=> Server Communication)
  - Database System Server
  - Client Software (for sending queries)

# Client Softwares

- MySQL Workbench
- mysql Command Line Tool
- psql Command Line Tool
- Various Third Party Tools (Like Sequel Pro)
- Applicatio With Drive/Package
- VS Code Extension

# Connecting to Database Servers

- MySQL
  - terminal command
    ```sh
    mysql --host=localhost --user=root --password=<password> --port=3306
    ```
    or if you wanna hide and type password manually
    ```sh
    mysql --host=localhost --user=root -p
    ```
  - Also make sure you have no Firewall or VPN/Proxy settings that could be interfering with the network connection
  - example query:
    ```sh
    SELECT 'hello world'
    ```
  - quit
    ```sh
    quit
    ```
  - You can also use MySQL Workbench
  - Using MySQL shell
    ```js
    shell.connect({ host: 'localhost', user: 'root' });
    ```
    then type this to get into SQL mode
    ```sh
    \sql
    ```
    and type this to test it
    ```sh
    SELECT 'HELLO WORLD';
    ```
- PostgreSQL
  - terminal command (interact with PostgreSQL shell) - type below to log as default user called postgres
    ```sh
    sudo su - postgres
    ```
    then type to go to sql mode:
    ```sh
    psql
    ```
    then type this to test the query
    ```sh
    SELECT 'Hello world'
    ```

## VScode client

- Install SQLTools in the extension

- You might encounter problems with passwords solution down below

  - MySQL
    1. Open MySQL workbench
    2. run this query:
    ```sql
    alter user 'root'@'localhost' identified with mysql_native_password by '12345';
    ```
  - PostgreSQL

    1. go to terminal and type:

    ```sh
    sudo su - postgres
    ```

    2. after you have typed the password for your local pc, then type this to go into sql mode:

    ```sh
    psql
    ```

    3. if you are already is postgres sql mode, type this to alter password:

    ```sql
    ALTER USER postgres WITH PASSWORD 'new_password';
    ```
