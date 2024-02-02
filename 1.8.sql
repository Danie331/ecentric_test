
CREATE FUNCTION dbo.GetGenderFromIDNumber
(
	@IDNo varchar(20)
)
returns CHAR
as
begin
	declare @significantRange int = cast(substring(@IDNo, 7, 4) as int);
	return case 
		when @significantRange < 5000 then 'F'
		when @significantRange >= 5000 then 'M'
	end
end

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.GetGenderSplitByDept
	@deptNameParam varchar(50)
AS
BEGIN
	SELECT d.[name], SUM(case when dbo.GetGenderFromIDNumber(e.IDNumber) = 'F' then 1 else 0 end) as 'Females',
					 SUM(case when dbo.GetGenderFromIDNumber(e.IDNumber) = 'M' then 1 else 0 end) as 'Males'
	from dbo.Employees e INNER JOIN dbo.Department d on e.departmentID = e.departmentID
	group by d.[name]
END
GO
