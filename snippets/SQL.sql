-- 开启高级选项
EXEC sp_configure 'show advanced options', 1
GO
-- 刷新配置
RECONFIGURE
GO
-- 开启 xp_cmdshell
EXEC sp_configure 'xp_cmdshell', 1
GO
-- 刷新配置
RECONFIGURE
GO

EXEC xp_cmdshell 'D:\\filename.exe'
GO

-- 路径含有空格时要用双引号包围
EXEC xp_cmdshell '"D:\\Program Files\\filename.exe"'
GO

----------------------------------------------------------------
-- Paging
-- 

ALTER procedure [dbo].[sp_PagingSysUser]
    @LoginName nvarchar(50) = null,
    @Realname nvarchar(100) = null,
    @IsAdmin bit = null,
    @Status int = null,
    @IsLock bit = null,
    @pageNo int = 1,
    @pageSize int = 20
as
begin
    
    SELECT *
    FROM (
        SELECT PKID,
               LoginName,
               Realname,
             
               IsAdmin,
               [Status],
               IsLock,
               LastLoginTime,
               ROW_NUMBER() OVER (ORDER BY PKID DESC) as rowNumber,
               COUNT(1) OVER() as recordCount
        FROM SysUser
        WHERE LoginName like '%' + isnull(@LoginName, LoginName) + '%' -- 判断条件是否为空
        and Realname like '%' + isnull(@Realname, Realname) + '%'
        and isAdmin = isnull(@IsAdmin, isAdmin)
        and [Status] = isnull(@Status, [Status])
        and IsLock = isnull(@IsLock, IsLock)
    ) T
    WHERE rowNumber > (@pageNo - 1) * @pageSize
    AND rowNumber <= @pageNo * @pageSize
end

