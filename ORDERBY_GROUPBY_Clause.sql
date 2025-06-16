
--Group By, Order By

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC