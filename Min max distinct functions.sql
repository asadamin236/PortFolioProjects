SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [SQL tutorial].[dbo].[EmployeeDemographics]

  SELECT *
  From [SQL tutorial].[dbo].EmployeeSalary

  -- Count all cells of data from EmployeeSalary table.

  SELECT Count(Salary) as SalaryCount
  From [SQL tutorial].[dbo].EmployeeSalary

  --Take full data from JobTitle column and EmployeeSalary table..

  Select DISTINCT(JobTitle)
  FROM [SQL tutorial].[dbo].EmployeeSalary

  --Take a min from EmployeeSalary table
  Select min(Salary)
  From [SQL tutorial].[dbo].EmployeeSalary
-- Take a max from EmployeeSalary table..

  Select max(Salary)
  From [SQL tutorial].[dbo].EmployeeSalary

