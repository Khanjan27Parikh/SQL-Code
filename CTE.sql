
--CTE (Common Table Expression)

WITH CTE_Employee AS
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender,
AVG(Salary) OVER (PARTITION BY Salary) as AvgSalary
FROM SQLTutorial.dbo.EmployeeDemographics as emp
JOIN SQLTutorial.dbo.EmployeeSalary as sal
ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)

SELECT *
FROM CTE_Employee	