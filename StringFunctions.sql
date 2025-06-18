
--String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

CREATE TABLE EmployeeError (
EmpployeeID int,
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeError VALUES
('1001   ', 'Jimbo', 'Halbert'),
('   1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT *
FROM EmployeeError

--Using TRIM, LTRIM, RTRIM
SELECT EmpployeeID, RTRIM(LTRIM(EmpployeeID)) as IDTRIM
FROM EmployeeError
--As TRIM() not working so alternative is to use RTRIM(LTRIM())

SELECT EmpployeeID, LTRIM(EmpployeeID) as IDTRIM
FROM EmployeeError

SELECT EmpployeeID, RTRIM(EmpployeeID) as IDTRIM
FROM EmployeeError


--Using Replace
Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeError


--Using Substring
SELECT FirstName, SUBSTRING(FirstName, 1,3) as SmallString
FROM EmployeeError

-- Fuzzy matching on the below strings using substring
-- Gender, LastName, AGE, DOB


--Using UPPER and LOWER
SELECT FirstName, LOWER(FirstName)
FROM EmployeeError

SELECT FirstName, UPPER(FirstName)
FROM EmployeeError