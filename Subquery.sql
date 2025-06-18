
--Sub queries (Nested queries)

SELECT *
FROM EmployeeSalary


-- Subquery in Select
SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) as AllAvgSalary
FROM EmployeeSalary


-- Subquery in Partition By
SELECT EmployeeID, Salary, AVG(Salary) over() as AllAvgSalary
FROM EmployeeSalary


-- Subquery Group By doesn't work
SELECT EmployeeID, Salary, AVG(Salary) as AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2
-- Group By will not work bcz as we are doing grouping with both the columns 


-- Subquery in From
SELECT a.EmployeeID, a.AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) over() as AllAvgSalary
	  FROM EmployeeSalary) a


-- Subquery in Where
SELECT EmployeeID, JobTitle, Salary
From EmployeeSalary
WHERE EmployeeID in (
		SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30)
-- Here only one column can be selected in From clause