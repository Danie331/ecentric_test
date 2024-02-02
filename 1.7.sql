-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.CreateEmployee
	@lastNameParam varchar(50),
	@firstNameParam varchar(50),
	@genderParam char,
	@IDNumberParam varchar(20),
	@salaryLevelIDParam int,
	@departmentIDParam int
AS
BEGIN
	INSERT dbo.Employee
	VALUES (@lastNameParam, @firstNameParam, @genderParam, @IDNumberParam, @salaryLevelIDParam, @departmentIDParam);
END
GO
