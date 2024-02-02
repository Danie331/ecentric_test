
CREATE FUNCTION dbo.MapEcentricTestTable
(
	@name VARCHAR(255)
)
returns int
as
begin
	return (select ID from dbo.EcentricTestTable where [Name] = @name)
end