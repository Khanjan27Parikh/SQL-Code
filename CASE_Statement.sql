--Case Statement

--SELECT FirstName, LastName, Age,
--CASE 
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Young'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

--Case 1: Need to give raise to department but Salesman getting the most raise % compared to others.
--Write the SQL query to display thier after raise salary.

SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.25)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.10)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * 0.00001)
	ELSE Salary + (Salary * 0.05)
END AS SalaryAfterRaise
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID