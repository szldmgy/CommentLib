----------------------------------------------------------------
-- Paging
-- via: http://stackoverflow.com/questions/241622/paging-with-oracle
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

----------------------------------------------------------------
-- Insert a DATE/TIME value into an Oracle table
-- via: http://stackoverflow.com/questions/241622/paging-with-oracle
-- 

INSERT INTO table_name(date_field)
VALUES(TO_DATE('2014/03/30 21:18:30', 'yyyy/mm/dd hh24:mi:ss'));

----------------------------------------------------------------
-- 查询不重复的记录
-- 

SELECT DISTINCT column_name
from table_name

