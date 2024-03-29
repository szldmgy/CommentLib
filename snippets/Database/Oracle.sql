/**
 * Paging
 * via: http://stackoverflow.com/questions/241622/paging-with-oracle
 */ 
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
WHERE rn >= (((pageNumber - 1) * pageSize) + 1);

----------------------------------------------------------------
-- Insert a DATE/TIME value into an Oracle table
-- via: http://stackoverflow.com/questions/241622/paging-with-oracle
-- 

INSERT INTO table_name(date_field)
VALUES(TO_DATE('2014/03/30 21:18:30', 'yyyy/mm/dd hh24:mi:ss'));

/**
 * 查询不重复的记录
 */
SELECT DISTINCT column_name
FROM table_name;

/**
 * 进入表修改模式
 */
SELECT *
FROM table_name
FOR UPDATE

/**
 * 多字段排序
 */
SELECT *
FROM table_name
ORDER BY columnA DESC, 
         columnB ASC;

/**
 * 获得系统时间的前一天的年月日部分
 */
SELECT TRUNC(SYSDATE - 1)
FROM dual;

/**
 * 获得某个月的最后一天
 */
SELECT TRUNC(LAST_DAY(TO_DATE('2014/4/23', 'yyyy/mm/dd')))
FROM dual;

/**
 * 外链子查询与 case 用法
 */
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

/**
 * 查询大于某个月份的记录
 */

-- 如果字段是 DATE 型
SELECT *
FROM table_name
WHERE date_column >= TRUNC(SYSDATE, 'mm');

-- 如果字段是 VARCHAR 型
SELECT *
FROM table_name
WHERE TO_DATE(date_column, 'mm/dd/yyy') >= TRUNC(SYSDATE, 'mm')

/**
 * 求平均值精度超出，报 OCI-22053: overflow error 错误的解决方法
 * 原因通常是，使用的浮点数精度超过了 Oracle 所支持的范围。
 * 使用 TRUNC 方法，截取小数位，或使用 ROUND 方法，四舍五入，保留指定的有效位数。
 * 价格类，更推荐使用 ROUND。
 */
ROUND(AVG(price), 2)
TRUNC(AVG(price), 2)

/**
 * 获取前 N 条数据。
 */
select T.*,
       rowNum 
from (
    select *
    from tableName
) T
where rowNum <= 10;

/**
 * 获取系统时间、系统时间串
 */
sysDate, sysTimeStamp

/**
 * 存储过程中条件的处理
 */
v_number_param int 
v_varchar_param varchar(50)

select *
from Table
where (v_number_param = -1 or number_column = v_number_param)
and (v_varchar_param is null or varchar_column = v_varchar_param)

/**
 * 存储过程中对返回表集合的处理
 */
procedure GetSomeList (
    v_param_1 int,
    v_param_2 int,
    RetCursor out myCursor
);

procedure GetSomeList (
    v_param_1 int,
    v_param_2 int,
    RetCursor out myCursor
)
is
begin

open RetCursor for select *
from someTable
where (v_param_1 = -1 or column_1 = v_param_1)
and (v_param_2 = -1 or column_2 = v_param_2);

end;

/**
 * 存储过程中返回操作成功的数据条数
 */

-- 修改开放平台资源审核状态
PROCEDURE GetPopStockItemByPopStockID (
    v_POP_STOCK_ID TPOP_STOCK.STOCK_ID%type, -- 资源 ID
    v_AUDIT_STATUS TPOP_STOCK.AUDIT_STATUS%type, -- 资源审核状态
    v_AUDITED_BY TPOP_STOCK.AUDITED_BY%type, -- 资源审核人 ID
    v_COUNT OUT NUMBER -- 操作成功数据条数
)
IS
BEGIN

update TPOP_STOCK
set AUDIT_STATUS = v_AUDIT_STATUS,
    AUDITED_BY = v_AUDITED_BY,
    AUDITED_TIME = sysTimeStamp,
    LAST_MODIFIED_TIME = sysTimeStamp
where PKID = v_POP_STOCK_ID;

v_COUNT := SQL%ROWCOUNT;

END GetPopStockItemByPopStockID;

/**
 * insert 数据的时候用 select 查询符合的数据插入进去
 */
insert into TSALES_ORDER_LOG(
    PKID,
    SALES_ORDER_ID,
    SALES_ORDER_CODE,
    BILL_TYPE,
    BILL_ID,
    BILL_CODE,
    OPERATE_TYPE,
    REMARK,
    ADDED_BY,
    ADDED_TIME,
    LAST_MODIFIED_BY,
    LAST_MODIFIED_TIME,
    LAST_MODIFIED_IP,
    VALID
)
(
    select SQ_TSALES_ORDER_LOG.NEXTVAL,
           mainBill.SUPPLIER_ID,
           relation.SALES_ORDER_ID,
           salesOrder.ORDER_CODE,
           mainBill.BILL_TYPE,
           mainBill.PKID,
           mainBill.REQUEST_CODE,
           39,
           v_OPERATOR_ID,
           sysDate,
           null,
           null,
           null,
           'T'
    from TSUPPLIER_DISBURS_SO_RELATION relation
    left join TSALES_ORDER salesOrder
    on relation.SALES_ORDER_ID = salesOrder.PKID
    left join TSUPPLIER_DISBURSEMENTS mainBill
    on relation.SUPPLIER_DISBURSEMENTS_ID = mainBill.PKID
    and relation.valid = 'T'
    and salesOrder.valid = 'T'
    and mainBill.valid = 'T'
);

/**
 * Convert string to number.
 */
select to_number('12')
from dual;

/**
 * Get a string's length
 */
length('some string')
lengthb('some string')

subStr('some string', 0, 5)
inStr('some string', 'c', 1, 1)

/**
 * Check string is or not a number.
 */
select 'string'
from dual
where regexp_like('string', '(^[+-]?\d{0,}\.?\d{0,}$)');

/**
 * Search something like
 */
select *
from table
where column like '%' || 'something' || '%';

/**
 * if block
 */

if param = 1
then 
    ...
elsif param = 2
then
    ...
endif;
