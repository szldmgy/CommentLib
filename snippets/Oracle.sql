---------------------------------------------
-- Paging
-- 

SELECT * 
FROM (
    SELECT o.*, 
           rownum rn
    FROM (
    	SELECT * 
        FROM ORDERS 
        WHERE CustomerID LIKE 'A%'
    	ORDER BY OrderDate DESC, 
                 ShippingDate DESC
    ) o
    WHERE rownum < ((pageNumber * pageSize) + 1)
)
WHERE rn >= (((pageNumber - 1) * pageSize) + 1)

