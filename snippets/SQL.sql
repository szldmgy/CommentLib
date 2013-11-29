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
