A large Covid dataset file was downloaded from https://ourworldindata.org/covid-deaths, the file contains detailed information on COVID such as, infection spread across the globe for all continents and countries, information obout the covid deaths and vaccinations. So in short there is too much of information for anybody to understand by just going through the file. 

In this project, the data was analyzed, cleansed (where required), imported into sql server database tables, created meaningful resultsets using SQL queries.

## Tools Used

Tool | Purpose 
--- | --- 
Microsoft Excel | To create covid deaths and covid vaccinations details in seperate excel files 
MS SQL Server Mgmt Studio | To build SQL scripts
MS SQL Server | To create covid data tables 
MS SQL Server Import and Export Data | To import ms excel data into database tabs

## Process
![alt text](https://github.com/smvishnu/Covid-DataExploration-Sql/blob/main/Covid_Data_Exploration.png "Covid Data Exploration")

Following scenarios were scripted and resultsets were created,
1. Finding death percentage for all COUNTRIES as of end of April 2024. The result set shows Total_Cases vs Total_Deaths since the start of Covid.
2. Finding % of new cases (vs Total Population) for all COUNTRIES since year 2020 to 2024, display percentage for each year.
3. Finding death percentage (vs population) for all CONTINENTS as of end of April 2024
4. Looking at countries with highest infection rate compared to population
5. Looking at Total Population vs Vaccinations
    
## Unit Testing

Query results were manually verified against the original excel data. Excel data was filtered using FILTER and SORT functions.

Thanks for reading. If you have any feedback, questions please let me know. My contact details are in the website.
