USE [PortfolioProject]
GO
/****** Object:  Table [dbo].[CovidVaccinations]    Script Date: 1/05/2024 11:14:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CovidVaccinations](
	[iso_code] [nvarchar](255) NULL,
	[continent] [nvarchar](255) NULL,
	[location] [nvarchar](255) NULL,
	[date] [nvarchar](255) NULL,
	[total_tests] [nvarchar](255) NULL,
	[new_tests] [nvarchar](255) NULL,
	[total_tests_per_thousand] [nvarchar](255) NULL,
	[new_tests_per_thousand] [nvarchar](255) NULL,
	[new_tests_smoothed] [nvarchar](255) NULL,
	[new_tests_smoothed_per_thousand] [nvarchar](255) NULL,
	[positive_rate] [nvarchar](255) NULL,
	[tests_per_case] [nvarchar](255) NULL,
	[tests_units] [nvarchar](255) NULL,
	[total_vaccinations] [nvarchar](255) NULL,
	[people_vaccinated] [nvarchar](255) NULL,
	[people_fully_vaccinated] [nvarchar](255) NULL,
	[total_boosters] [nvarchar](255) NULL,
	[new_vaccinations] [nvarchar](255) NULL,
	[new_vaccinations_smoothed] [nvarchar](255) NULL,
	[total_vaccinations_per_hundred] [nvarchar](255) NULL,
	[people_vaccinated_per_hundred] [nvarchar](255) NULL,
	[people_fully_vaccinated_per_hundred] [nvarchar](255) NULL,
	[total_boosters_per_hundred] [nvarchar](255) NULL,
	[new_vaccinations_smoothed_per_million] [nvarchar](255) NULL,
	[new_people_vaccinated_smoothed] [nvarchar](255) NULL,
	[new_people_vaccinated_smoothed_per_hundred] [nvarchar](255) NULL,
	[stringency_index] [float] NULL,
	[population_density] [float] NULL,
	[median_age] [float] NULL,
	[aged_65_older] [float] NULL,
	[aged_70_older] [float] NULL,
	[gdp_per_capita] [float] NULL,
	[extreme_poverty] [nvarchar](255) NULL,
	[cardiovasc_death_rate] [float] NULL,
	[diabetes_prevalence] [float] NULL,
	[female_smokers] [nvarchar](255) NULL,
	[male_smokers] [nvarchar](255) NULL,
	[handwashing_facilities] [float] NULL,
	[hospital_beds_per_thousand] [float] NULL,
	[life_expectancy] [float] NULL,
	[human_development_index] [float] NULL,
	[excess_mortality_cumulative_absolute] [nvarchar](255) NULL,
	[excess_mortality_cumulative] [nvarchar](255) NULL,
	[excess_mortality] [nvarchar](255) NULL,
	[excess_mortality_cumulative_per_million] [nvarchar](255) NULL
) ON [PRIMARY]
GO
