-- Read the data..

Select *
From [PortFolioProject].[dbo].['Car dekho$']
-- Find min category of fuel
Select Min(fuel) As Fuel
From [PortFolioProject].[dbo].['Car dekho$']

Select Top(20) Name, year, Max(selling_price) As sellprice
From [PortFolioProject].[dbo].['Car dekho$']
Group By Name, year
Order By sellprice desc

--Use self join between table

Select a.year, a.transmission, b.owner, b.engine, b.year
From [PortFolioProject].[dbo].['Car dekho$'] a
join [PortFolioProject].[dbo].['Car dekho$'] b
On a.year = b.year
where a.year is not null
Order by 2, 3

--Show those results whose seats 5 or greater than 5 and show only owner, year, seller_type, and fuel

Select owner, year, seller_type, fuel
From [PortFolioProject].[dbo].['Car dekho$']
where seats >= '5'

--Show count of seller type individual category and fuel Petrol category

Select Count(seller_type) As SellerType, Count(fuel) As Fuel
From [PortFolioProject].[dbo].['Car dekho$']
Where seller_type='Individual' And
fuel = 'Petrol'

-- Show those records whose engine is equal to 999 CC...

Select owner, year, seller_type, selling_price
From [PortFolioProject].[dbo].['Car dekho$']
Where engine = '999 CC'

-- Show all records of first owner

Select * 
From [PortFolioProject].[dbo].['Car dekho$']
Where owner = 'First Owner'

--Show First owner all record in 2022
Select * 
From [PortFolioProject].[dbo].['Car dekho$']
where owner = 'First Owner'
AND year = '2022'

-- Show all records whose selling price is greater than 35000

Select *
From [PortFolioProject].[dbo].['Car dekho$']
Where selling_price >= '35000'