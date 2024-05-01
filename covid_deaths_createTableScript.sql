USE [PortfolioProject]
GO
/****** Object:  Table [dbo].[CovidDeaths]    Script Date: 1/05/2024 11:12:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CovidDeaths](
	[iso_code] [nvarchar](255) NULL,
	[continent] [nvarchar](255) NULL,
	[location] [nvarchar](255) NULL,
	[population] [float] NULL,
	[new_cases] [float] NULL,
	[new_cases_smoothed] [float] NULL,
	[new_deaths] [float] NULL,
	[new_deaths_smoothed] [float] NULL,
	[new_cases_per_million] [float] NULL,
	[new_cases_smoothed_per_million] [float] NULL,
	[new_deaths_per_million] [float] NULL,
	[new_deaths_smoothed_per_million] [float] NULL,
	[reproduction_rate] [nvarchar](255) NULL,
	[icu_patients] [nvarchar](255) NULL,
	[icu_patients_per_million] [nvarchar](255) NULL,
	[hosp_patients] [nvarchar](255) NULL,
	[hosp_patients_per_million] [nvarchar](255) NULL,
	[weekly_icu_admissions] [nvarchar](255) NULL,
	[weekly_icu_admissions_per_million] [nvarchar](255) NULL,
	[weekly_hosp_admissions] [nvarchar](255) NULL,
	[weekly_hosp_admissions_per_million] [nvarchar](255) NULL,
	[total_cases] [float] NULL,
	[total_deaths] [float] NULL,
	[date] [date] NULL,
	[total_cases_per_million] [float] NULL,
	[total_deaths_per_million] [float] NULL
) ON [PRIMARY]
GO
