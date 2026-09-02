-- Write your query below
SELECT DISTINCT
    o.customer_id, 
    c.customer_name

FROM customers AS c
INNER JOIN orders AS o
    ON o.customer_id=c.customer_id
WHERE o.customer_id IN (
    SELECT
        customer_id
    FROM
        orders
    WHERE product_name='A'
)
AND o.customer_id IN (
    SELECT
        customer_id
    FROM
        orders
    WHERE product_name='B')
AND o.customer_id NOT IN (
    SELECT
        customer_id
    FROM
        orders
    WHERE product_name ='C')
ORDER BY c.customer_name
