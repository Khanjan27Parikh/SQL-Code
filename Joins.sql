--Joins

--Inner Joins, Left/Right/Full, Outer Joins

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary
  

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Left Outer Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--Use Case 1: Michael is 1000 USD short to meet his quaterly target. So, he comes with idea to deduct the pay from the highest 
--paid employee from his branch. 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

--Use Case 2: Kevin did mistake in counting Average salary of the Salesman. Nisha uses her SQL skill to find the Average
--salary of the Salesman.

SELECT JobTitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle