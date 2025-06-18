
--Stored Procedures

CREATE PROCEDURE TEST
AS
SELECT * 
FROM EmployeeDemographics

EXEC TEST


--Case2 :
CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics demo
	JOIN EmployeeSalary sal
	ON demo.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_employee

EXEC Temp_Employee