

CREATE TABLE dbo.Employees
(
	employeeNo int identity(1,1) primary key,
	lastName varchar(50) not null,
	firstName varchar(50) not null,
	gender char not null,
	IDNumber varchar(20) not null,
	salaryLevelID int null,
	-- unnamed constraint for simplicity
	departmentID int foreign key references dbo.Department (departmentID) null
)
GO

CREATE TABLE dbo.Department
(
	departmentID int identity(1,1) primary key,
	[name] varchar(50) not null,
	costCentreID int foreign key references dbo.CostCentre (costCentreID) null
)
GO

CREATE TABLE dbo.CostCentre
(
	costCentreID int identity(1,1) primary key,
	[name] varchar(50) not null,
	accountNo varchar(50) not null
)
GO

CREATE TABLE dbo.salaryLevel
(
	salaryLevelID int not null,
	amount decimal(7, 2),
	increasePercentage smallint
)
GO