-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.GetDeptEmployeeCounts 
AS
BEGIN
	SELECT d.[name], COUNT(e.employeeNo) FROM dbo.Department d
	INNER JOIN dbo.Employees e ON d.departmentID = e.departmentID
	GROUP BY d.[name]
END
GO