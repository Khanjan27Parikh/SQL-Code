
--Updating/Deleting Data in Table

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
--SET EmployeeID = 1012
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flex'

DELETE
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1005