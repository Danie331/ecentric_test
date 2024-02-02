-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.UpdateEmployeeSalaryByDept 
	@deptNameParam varchar(50),
	@salaryIncPercParam smallint
AS
BEGIN
	UPDATE sl
	SET sl.amount = sl.amount + (sl.amount * @salaryIncPercParam / 100),
		sl.increasePercentage = @salaryIncPercParam
	FROM dbo.Department d INNER JOIN dbo.Employees e ON d.departmentID  = e.departmentID
	INNER JOIN salaryLevel sl ON sl.salaryLevelID = e.salaryLevelID
	WHERE d.[name] = @deptNameParam
END
GO
