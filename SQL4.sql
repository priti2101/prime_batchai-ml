CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50)
);

INSERT INTO customers VALUES 
(1, 'ALICE', 'MUMBAI'),
(2, 'BOB', 'DELHI'),
(3, 'CHARLIE', 'BANGALORE'),
(4, 'DAVID', 'MUMBAI');

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
amount int
);

INSERT INTO orders VALUES 
(101, 1, 500),
(102, 1, 900),
(103, 2 , 300),
(104, 5, 700);

SELECT * FROM customers;
SELECT * FROM orders;

-- inner join
SELECT *
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- left join
SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- RIGHT JOIN
SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- OUTER JOIN
SELECT *
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
UNION
SELECT *
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- CROSS JOIN
SELECT * 
FROM customers
CROSS JOIN orders;

-- SELF JOIN
SELECT *
FROM customers as A 
JOIN customers as B 
ON A.customer_id = B.customer_id;
