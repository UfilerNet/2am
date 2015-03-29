USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_Person]    Script Date: 03/29/2015 22:15:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_Person]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_Person]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_Person]    Script Date: 03/29/2015 22:15:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[PublicationID] [int] NOT NULL,
	[Forename] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Commissioner] [bit] NULL,
	[Author] [bit] NULL,
	[Reviewer] [bit] NULL,
	[Initials]  AS (left([Forename],(1))+left([Surname],(1)))
) ON [PRIMARY]

GO

