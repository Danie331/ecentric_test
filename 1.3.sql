-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.GetEmployeeDetailsByDept 
	@deptNameParam varchar(50) = null
AS
BEGIN
	IF @deptNameParam IS NOT NULL
	BEGIN
		DECLARE @deptID INT = (SELECT TOP 1 departmentID from dbo.Department
										WHERE [name] = @deptNameParam)
		SELECT * FROM dbo.Employees WHERE departmentID = @deptID
	END
	ELSE
	BEGIN
		SELECT * FROM dbo.Employees
	END
END
GO