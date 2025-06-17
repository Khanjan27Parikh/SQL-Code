
--Partition By

SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID

--In differnce with Group By

SELECT Gender, COUNT(Gender) 
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender