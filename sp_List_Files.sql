USE master
GO
CREATE OR ALTER PROC usp_ListenFiles @DBName NVARCHAR(128)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @SQL NVARCHAR(4000)
	SET @SQL = 'USE ' + @DBName + '
		SELECT
			name,
			CASE WHEN max_size = -1 THEN ''Unlimited'' ELSE CONVERT(NVARCHAR(20), max_size/128.0/1024.0) END AS MaxSize_GB,
			size/128.0 AS Size_MB,
			FILEPROPERTY(name, ''SPACEUSED'')/128.0 AS Used_MB
		FROM sys.database_files'
	EXEC (@SQL)
END

GO

EXEC usp_ListenFiles @DBName = N'Northwind';
GO