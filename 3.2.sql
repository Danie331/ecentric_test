
-- Using a custom function call in the WHERE clause can impede performance because it needs to be converted to an iterative call
-- thereby circumventing any indexes that could be used.
-- Rather use:

DECLARE @mappedID int = dbo.MapEcentricTestTable('Test2')
SELECT *
FROM dbo.EcentricTestTable e
JOIN EcentricTestTable_NEW n ON n.ID = e.ID
WHERE e.ID = @mappedID


