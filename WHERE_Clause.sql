
--WHERE Statement
--=, >, <, <>, And, Or, Like, Null, Not Null, In

SELECT * 
FROM EmployeeDemographics
WHERE FirstName <> 'Jim' doesnotequal

SELECT * 
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 's%o%', '%s%'

SELECT * 
FROM EmployeeDemographics
WHERE FirstName is Not Null

SELECT * 
FROM EmployeeDemographics
WHERE FirstName In ('Jim', 'Michael')