----------------------------------------------------------------
-- Paging
-- via: http://stackoverflow.com/questions/241622/paging-with-oracle
-- 

SELECT * 
FROM (
    SELECT T.*, 
           rownum rn
    FROM (
        SELECT * 
        FROM table_name
        ORDER BY id DESC
    ) T
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
FROM table_name

----------------------------------------------------------------
-- 进入表修改模式
--

SELECT *
FROM table_name
FOR UPDATE

----------------------------------------------------------------
-- 多字段排序
--

SELECT *
FROM table_name
ORDER BY columnA DESC, columnB ASC;

----------------------------------------------------------------
-- 获得系统时间的前一天的年月日部分
--

SELECT TRUNC(SYSDATE - 1)
FROM dual;

----------------------------------------------------------------
-- 获得某个月的最后一天
--

SELECT TRUNC(LAST_DAY(TO_DATE('2014/4/23', 'yyyy/mm/dd')))
FROM dual;

----------------------------------------------------------------
-- 外链子查询与 case 用法
--

SELECT DISTINCT s.SPECIFICATION_NAME, s.PKID, 
CASE 
    WHEN sl.recordCount IS NULL THEN 0
    ELSE sl.recordCount
END AS recordCount
FROM TSPECIFICATION s
LEFT OUTER JOIN TMATERIAL_TREE m 
ON s.PKID = m.SPECIFICATION_ID 
LEFT OUTER JOIN (
    SELECT DISTINCT SPECIFICATION_NAME, count(1) as recordCount
    FROM TSEARCH_LOG
    WHERE TRUNC(added_time) = TRUNC(SYSDATE - 1)
    GROUP BY SPECIFICATION_NAME
    ORDER BY recordCount DESC
) sl
ON TRIM(s.SPECIFICATION_NAME) = TRIM(sl.SPECIFICATION_NAME)
WHERE s.VALID = 'T' 
ORDER BY recordCount DESC, SPECIFICATION_NAME ASC;

----------------------------------------------------------------
-- 查询大于某个月份的记录
--

-- 如果字段是 DATE 型
SELECT *
FROM table_name
WHERE date_column >= TRUNC(SYSDATE, 'mm');

-- 如果字段是 VARCHAR 型
SELECT *
FROM table_name
WHERE TO_DATE(date_column, 'mm/dd/yyy') >= TRUNC(SYSDATE, 'mm')

----------------------------------------------------------------
-- 求平均值精度超出，报 OCI-22053: overflow error 错误的解决方法
-- 使用 TRUNC 方法，截取小数位，或使用 ROUND 方法，四舍五入，保留指定的有效位数。
-- 价格类，更推荐使用 ROUND。
--

ROUND(AVG(price), 2)
TRUNC(AVG(price), 2)

