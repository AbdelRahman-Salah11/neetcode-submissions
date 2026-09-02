-- Write your query below
SELECT
    seller_name
FROM
    seller
WHERE NOT EXISTS (
    SELECT 
        seller_id
    FROM
        orders
    WHERE orders.seller_id=seller.seller_id
    AND EXTRACT (YEAR FROM sale_date) = 2020
)
ORDER BY seller_name;