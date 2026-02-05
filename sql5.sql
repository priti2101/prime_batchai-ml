SELECT * FROM customers;
SELECT * FROM orders;

SELECT *
FROM orders
WHERE amount > (
SELECT AVG(amount)
FROM orders
);

SELECT name, 
(
   SELECT COUNT(*)
   FROM orders o
   WHERE o.customer_id = c.customer_id
)AS order_count
FROM customers c;

SELECT 
      summary.customer_id,
      summary.avg_amount
FROM
    (
       SELECT
            customer_id,
            AVG(amount) as avg_amount
       FROM orders
       GROUP BY customer_id
     ) as summary;
	
CREATE VIEW view2 AS
SELECT c.customer_id, c.name, o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

select * FROM view2;

DROP VIEW view1;
