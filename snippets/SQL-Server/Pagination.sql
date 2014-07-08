/*!
 * Pagination.sql
 * v1.0.0
 * 通用分页存储过程。
 * 
 * Created by Ju2ender on 2013-08-05 10:44:27.
 * Copyright (c) 2013, 2014 Ju2ender. All rights reserved.
 * Released under the MIT license.
 * https://github.com/Ju2ender/CommentLib/blob/master/LICENSE
 */

if exists(
    select 1
    from sysObjects
    where id = OBJECT_ID(N'Pagination')
    and OBJECTPROPERTY(id, N'IsProcedure') = 1
)
    drop procedure dbo.Pagination
go

create PROCEDURE dbo.Pagination
    @tblName   varchar(255),       -- 表名
    @strGetFields varchar(1000) = '*',  -- 需要返回的列
    @fldName varchar(255)='',      -- 排序的字段名
    @PageSize   int = 20,          -- 页尺寸
    @PageNo  int = 1,           -- 页码
    @OrderType bit = 1,  -- 设置排序类型, 非 0 值则降序
    @strWhere  varchar(1500) = '',  -- 查询条件 (注意: 不要加 where)
    --@strGroupby varchar(2000)='', --order by 后面的group by
    @pTotalItem varchar(50) output, --记录总数
    @sqlStr varchar(1500) output --执行的语句
AS

declare @strSQL varchar(5000)       -- 主语句
declare @strPTotalItemSQL nvarchar(4000)       -- 主语句
declare @strTmp   varchar(110)        -- 临时变量
declare @strOrder varchar(400)        -- 排序类型

set @strGetFields=isnull(@strGetFields,'*')
set @fldName=isnull(@fldName,'crtdate')

if @strWhere !=''
    set @strPTotalItemSQL = 'select @total=count(*) from [' + @tblName + '] where '+@strWhere+' '
else
    set @strPTotalItemSQL = 'select @total=count(*) from [' + @tblName + '] ' 

exec sp_executesql @strPTotalItemSQL, N'@total varchar(100) output', @pTotalItem output --将exec的结果放入变量中的做法

if @OrderType != 0
    begin
        set @strTmp = '<(select min'
        set @strOrder = ' order by [' + @fldName +'] desc'

    --如果@OrderType不是0，就执行降序，这句很重要！
    end
else
    begin
        set @strTmp = '>(select max'
        set @strOrder = ' order by [' + @fldName +'] asc'
    end

if @PageNo = 1
    begin
        if @strWhere != ''   
            set @strSQL = 'select top ' + str(@PageSize) +' '+@strGetFields+ '  from [' + @tblName + '] where ' + @strWhere + ' ' + @strOrder + ' ' --+ @strGroupby
        else
            set @strSQL = 'select top ' + str(@PageSize) +' '+@strGetFields+ '  from ['+ @tblName + '] '+ @strOrder + ' ' --+ @strGroupby
    --如果是第一页就执行以上代码，这样会加快执行速度
    end
else
    begin
    --以下代码赋予了@strSQL以真正执行的SQL代码
        set @strSQL = 'select top ' + str(@PageSize) +' '+@strGetFields+ '  from ['
            + @tblName + '] where [' + @fldName + ']' + @strTmp + '(['+ @fldName 
            + ']) from (select top ' + str((@PageNo-1)*@PageSize) 
            + ' ['+ @fldName + '] from [' + @tblName + ']' + @strOrder + ') as tblTmp)'+ @strOrder + ' ' --+ @strGroupby

        if @strWhere != ''
            set @strSQL = 'select top ' + str(@PageSize) +' '+@strGetFields+ '  from ['
                + @tblName + '] where [' + @fldName + ']' + @strTmp + '(['
                + @fldName + ']) from (select top ' + str((@PageNo-1)*@PageSize) + ' ['
                + @fldName + '] from [' + @tblName + '] where ' + @strWhere + ' '
                + @strOrder + ') as tblTmp) and ' + @strWhere + ' ' + @strOrder
                --+ ' ' + @strGroupby
    end 

    set @sqlStr = @strSQL
    exec(@strSQL)
go
