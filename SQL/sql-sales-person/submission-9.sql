-- Write your query below
SELECT 
    name
FROM
    sales_person
WHERE sales_id NOT IN(
    SELECT 
        o.sales_id
    FROM 
        orders AS o
    INNER JOIN company AS c
        ON c.com_id=o.com_id
    WHERE c.name ='CRIMSON'     
)