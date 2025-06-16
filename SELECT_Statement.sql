--SELECT Statement
--* , Top, Distinct, Count, As, Max, Min, Avg

SELECT FirstName, LastName
SELECT TOP 5 *
SELECT DISTINCT(Gender)
SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

SELECT AVG(Salary)
FROM EmployeeSalary

--To run the query eventhough other db is selected

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary