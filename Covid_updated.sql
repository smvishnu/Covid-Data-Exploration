/** The COVID dataset was downloaded from https://ourworldindata.org/ on 29Apr24 **/

/* #1	- Finding death percentage for all COUNTRIES as of end of April 2024. 
			The result set shows Total_Cases vs Total_Deaths since the start of Covid.
*/

SELECT	Location, MAX(date) AS Date, MAX(total_cases) AS Total_Cases, 
		MAX(total_deaths) AS Total_Deaths, 
		ROUND(MAX(total_deaths) / MAX(total_cases) * 100, 2) AS DeathPercentage
FROM     PortfolioProject.dbo.CovidDeaths
WHERE  (continent IS NOT NULL) 
	AND Location NOT IN ('High Income', 'Low Income', 'Lower middle income', 'Upper middle income')
GROUP BY Location
ORDER BY Location

/* #2	- Finding % of new cases (vs Total Population) for all COUNTRIES since year 2020 to 2024, 
			display percentage for each year 
*/

With CovidCTE as
(
Select Location, YEAR(Date) as Year, MAX(Population) as Total_Population, 
		SUM(New_Cases) as Total_Covid_Cases,
		ROUND((SUM(New_Cases) / MAX(Population))*100,3) AS Percentage
From PortfolioProject..CovidDeaths
WHERE  (continent IS NOT NULL) 
	AND Location NOT IN ('High Income', 'Low Income', 'Lower middle income', 'Upper middle income')
group by Location, YEAR(Date)
--order by 1,2 DESC
)
Select a.Location,  a.Percentage as '2020',
					b.Percentage as '2021',
					c.Percentage as '2022',
					d.Percentage as '2023',
					e.Percentage as '2024'
From CovidCTE a JOIN CovidCTE b ON a.Location = b.Location AND a.Year <> b.Year AND a.Year=2020
				JOIN CovidCTE c ON b.Location = c.Location AND b.Year <> c.Year AND b.Year=2021
				JOIN CovidCTE d ON c.Location = d.Location AND c.Year <> d.Year AND c.Year=2022
				JOIN CovidCTE e ON d.Location = e.Location AND d.Year <> e.Year AND d.Year=2023
				AND e.Year=2024
Order by a.Location

/* #3	- Finding death percentage (vs population) for all CONTINENTS as of end of April 2024 */

SELECT	Location, MAX(date) AS Date, MAX(total_cases) AS Total_Cases, 
		MAX(total_deaths) AS Total_Deaths, 
		ROUND(MAX(total_deaths) / MAX(total_cases) * 100, 2) AS DeathPercentage
FROM     PortfolioProject.dbo.CovidDeaths
WHERE  (continent IS NULL) 
	AND Location NOT IN ('High Income', 'Low Income', 'Lower middle income', 'Upper middle income', 'World')
GROUP BY Location 
--ORDER BY Total_Deaths DESC

/* #4	- Looking at countries with highest infection rate compared to population */

SELECT Location, Population, MAX(total_cases) AS HighestInfectionCount, 
		ROUND((MAX(total_cases) / population)*100,3) AS PercentPopulationInfected
FROM     PortfolioProject..CovidDeaths
GROUP BY population, location
--ORDER BY PercentPopulationInfected DESC
ORDER BY Location 

/* #5 Looking at Total Population vs Vaccinations */

With PopvsVacCTE as 
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
	SUM(convert(bigint, vac.new_vaccinations)) 
		over (Partition by dea.Location Order by dea.Location, dea.Date) as RollingPeopleVaccinated
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
	on dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--order by 6 desc
)
Select *, (RollingPeopleVaccinated/population)*100 as percentage from PopvsVacCTE
order by percentage desc
