-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.GetEmployeeSalaryDept 
	@employeeNo int
AS
BEGIN
	select e.employeeNo, sl.amount, d.[name]
	from dbo.Employees e 
		INNER JOIN 
		dbo.Department d on e.departmentID = d.departmentID
		INNER JOIN
		dbo.salaryLevel sl on e.salaryLevelID = sl.salaryLevelID
	where e.employeeNo = @employeeNo
END
GO
