--Select all data from covid_deaths table and owid_covid_data

Select * 
From PortFolioProject..covid_deaths$
Order By 3, 4

--Select *
--From PortFolioProject..['owid-covid-data$']
--Order by 3, 4

-- Select data that we are going to be using..

Select location, date, total_cases, new_cases, total_deaths, population
From PortFolioProject..covid_deaths$
Order By 1, 2

--Looking at Total_cases vs total_deaths...

--Select location, date, total_cases, total_deaths
--From PortFolioProject..covid_deaths$

-- Find sum of new cases location by location only top 20 countries

Select Top(20) location, Max(new_cases) as Sumofnewcases
From PortFolioProject..covid_deaths$
Group By location
Order By Sumofnewcases desc

--Find total deaths country vise and show only top 20 rows of the data

Select Top(20) location, Max(CAST(total_deaths as int)) as sumofdeaths
From PortFolioProject..covid_deaths$
--where continent is not null
Group By location
Order By sumofdeaths desc

--
Select Top(20) date, Max(total_deaths) as sumoftotaldeaths
From PortFolioProject..covid_deaths$
Group By date
Order By sumoftotaldeaths desc

Select Top(20) location, date, Max(new_cases) as Sum_of_new_cases, Max(total_cases) as total_number_of_cases
From PortFolioProject..covid_deaths$
Group By location, date
Order by Sum_of_new_cases desc, total_number_of_cases desc

--Join two tables along with two two columns of each and tae only top 20 rows 

Select Top(20) dea.location, dea.date, dea.new_cases, dea.total_deaths, vac.location, vac.date
From PortFolioProject..covid_deaths$ dea
join PortFolioProject..['owid-covid-data$'] vac
On dea.location=vac.location
and dea.date=vac.date
where dea.continent is not null
Order By 2, 3

--Find Average new cases along with countries

Select Top(20) location, AVG(new_cases) as Averagenewcases
From PortFolioProject..covid_deaths$
Group By location
Order By Averagenewcases desc

--Find minimum cases along with location vise

Select Top(20) location, Min(new_cases) as minimumnewcases
From PortFolioProject..covid_deaths$
Group By location
Order By minimumnewcases desc