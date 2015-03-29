USE [ufiler]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ufiler_2AM_Article_Scheduled2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ufiler_2AM_Article2] DROP CONSTRAINT [DF_Ufiler_2AM_Article_Scheduled2]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ufiler_2AM_Article_Delete2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ufiler_2AM_Article2] DROP CONSTRAINT [DF_Ufiler_2AM_Article_Delete2]
END

GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_Article2]    Script Date: 03/29/2015 22:12:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_Article2]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_Article2]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_Article2]    Script Date: 03/29/2015 22:12:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_Article2](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleID] [int] NOT NULL,
	[Subject] [nvarchar](400) NOT NULL,
	[CategoryID] [int] NULL,
	[EventID] [int] NULL,
	[OwnerID] [int] NULL,
	[StatusID] [int] NOT NULL,
	[WrittenByID] [int] NULL,
	[ScheduledFor] [int] NULL,
	[Released] [datetime] NULL,
	[Published] [int] NULL,
	[PublishedTitle] [nvarchar](300) NULL,
	[Pages] [decimal](5, 3) NULL,
	[Locked] [bit] NULL,
	[Deleted] [bit] NULL,
	[Notes] [varchar](max) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Ufiler_2AM_Article2] ADD  CONSTRAINT [DF_Ufiler_2AM_Article_Scheduled2]  DEFAULT ((0)) FOR [ScheduledFor]
GO

ALTER TABLE [dbo].[Ufiler_2AM_Article2] ADD  CONSTRAINT [DF_Ufiler_2AM_Article_Delete2]  DEFAULT ((0)) FOR [Deleted]
GO


