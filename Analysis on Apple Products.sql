-- Display table
Select *
From PortFolioProject..apple_products$

--Check out best 20 Mobiles on the basis of star rating and also check its Ram

Select Top(20) Brand, Ram, [Star Rating]

From PortFolioProject..apple_products$
Where [Star Rating] > '4.6'
AND Brand = 'Apple'

---- Check out price of 4GB Ram mobile and also show its star rating
--Note only top 5 records..
Select Top(5) Ram, [Star Rating], [Sale Price] As SalePrice 
From PortFolioProject..apple_products$
Where Ram = '4 GB'
Order By SalePrice Desc

--Check out product name how much discount and also sale price
Select Top(10) [Product Name], [Discount Percentage], [Sale Price] As SalePrice
From PortFolioProject..apple_products$
Order By SalePrice Desc

-- Show all records whose rating is equal to 4.5

Select *
From PortFolioProject..apple_products$
Where [Star Rating] = '4.5'

-- Use self join to join this table with the use of index column and shgow the price of 2 GB Ram mobile
Select P.[index], P.[Product Name] As P_Name1, P1.Ram, P1.[Sale Price]
From PortFolioProject..apple_products$ p
join PortFolioProject..apple_products$ P1
On P.[index] = P1.[index]
Where P1.Ram = '2 GB'
Order By [Sale Price] Desc

-- Product name and top 20 number of ratings mobiles...

Select TOP(20) [Product Name], [Number Of Ratings]
From PortFolioProject..apple_products$
Order By [Number Of Ratings] Desc