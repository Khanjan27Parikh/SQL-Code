
--Temp Tables

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1022', 'HR', '47000')

--Another of inserting all the values of larger table into temp tables
INSERT INTO	#temp_Employee
SELECT *
FROM SQLTutorial..EmployeeSalary


--Use Case 2 :

CREATE TABLE #temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics as emp
JOIN SQLTutorial.dbo.EmployeeSalary as sal
ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee2