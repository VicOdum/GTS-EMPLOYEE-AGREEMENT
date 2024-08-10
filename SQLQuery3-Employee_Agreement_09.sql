USE GTS_Employee_Agreement_09

/*Display Table*/
SELECT * FROM [dbo].[New_Employee_Data]  AS G;

/* Correcting the Data Type of the table imported through "Import Data" */
ALTER TABLE [dbo].[New_Employee_Data]

ALTER COLUMN [Contract_Term (in months)] FLOAT;

ALTER TABLE [dbo].[New_Employee_Data]
ALTER COLUMN [Agreement_Date] DATETIME;

ALTER TABLE [dbo].[New_Employee_Data]
ALTER COLUMN [Benefits] FLOAT;

ALTER TABLE [dbo].[New_Employee_Data]
ALTER COLUMN [Bonus] FLOAT;

ALTER TABLE [dbo].[New_Employee_Data]
ALTER COLUMN [EmpID] INT;

ALTER TABLE [dbo].[New_Employee_Data]
ALTER COLUMN [Basic_Salary] FLOAT;

ALTER TABLE [dbo].[New_Employee_Data]
ALTER COLUMN [salaries] FLOAT;



/*Confirm column DAta Types*/
/*EXEC sp_columns '[dbo].[GTS-Employee_Agreement_09]';*/


SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
  AND TABLE_NAME = 'New_Employee_Data';



SELECT SUM([Basic_Salary]) AS TotalBasicSalary
FROM [New_Employee_Data];

SELECT AVG([Basic_Salary]) AS AverageBasicSalary
FROM [New_Employee_Data];

/*Total Basic Salary of Employees, grouped by Department*/
SELECT [Department], ROUND(SUM([Basic_Salary]), 2) AS TotalBasicSalary
FROM [New_Employee_Data] GROUP BY [Department] ORDER BY TotalBasicSalary DESC;


/*Maximum Basic Salary of Employees, grouped by Department*/
SELECT [Department], ROUND(MAX([Basic_Salary]), 2) AS MaximunBasicSalary
FROM [New_Employee_Data] GROUP BY [Department] ORDER BY MaximunBasicSalary DESC;

/*Average Basic Salary of Employees, grouped by Department*/
SELECT [Department], ROUND(AVG([Basic_Salary]), 2) AS AverageBasicSalary
FROM [New_Employee_Data] GROUP BY ([Department]) ORDER BY AverageBasicSalary DESC ;

/*Average Basic Salary of Employees, grouped by Position*/
SELECT [Position], ROUND(AVG([Basic_Salary]), 2) AS AverageBasicSalary
FROM [New_Employee_Data] GROUP BY [Position] ORDER BY AverageBasicSalary ASC;

/*Maximum Salary of Employees, grouped by Department*/
SELECT [Department], ROUND(MAX([Salaries]), 2) AS MaximunSalary
FROM [New_Employee_Data] GROUP BY [Department] ORDER BY MaximunSalary DESC;

