-- Write your query below
SELECT 
    name
FROM
    sales_person AS s
WHERE NOT EXISTS(
    SELECT 
        o.sales_id
    FROM 
        orders AS o
    INNER JOIN company AS c
        ON c.com_id=o.com_id
    WHERE c.name ='CRIMSON'
    AND o.sales_id = s.sales_id      
)