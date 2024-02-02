
CREATE PROCEDURE dbo.GetEmployeesWithOrphanSalary
AS
BEGIN
	select e.* from dbo.Employees e
	left join dbo.salaryLevel sl on e.salaryLevelID = sl.salaryLevelID
	where sl.salaryLevelID is null
END
GO
