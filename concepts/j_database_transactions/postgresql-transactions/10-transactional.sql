-- in posgresql, it will rollback everything if there is a query that failed in this file by default

INSERT INTO customers(
    first_name,
    last_name,
    email
)
VALUES(
    'Marry',
    'White',
    'white@test.com'
);

INSERT INTO orders(
   amount_billed,
   customer_id 
)
VALUES(
    103.12,
);