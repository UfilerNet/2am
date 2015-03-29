USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_Notification]    Script Date: 03/29/2015 22:14:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_Notification]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_Notification]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_Notification]    Script Date: 03/29/2015 22:14:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_Notification](
	[ModuleID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[ArticleCreated] [bit] NULL,
	[ArticleReleased] [bit] NULL,
	[ArticleDeleted] [bit] NULL
) ON [PRIMARY]

GO

