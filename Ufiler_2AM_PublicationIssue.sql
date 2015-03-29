USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_PublicationIssue]    Script Date: 03/29/2015 22:15:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_PublicationIssue]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_PublicationIssue]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_PublicationIssue]    Script Date: 03/29/2015 22:15:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_PublicationIssue](
	[PublicationIssueID] [int] IDENTITY(1,1) NOT NULL,
	[PublicationID] [int] NOT NULL,
	[CoverDate] [datetime] NOT NULL,
	[ArticleCloseDate] [datetime] NOT NULL,
	[AdCloseDate] [datetime] NOT NULL
) ON [PRIMARY]

GO

