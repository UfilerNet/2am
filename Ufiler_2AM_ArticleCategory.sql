USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_ArticleCategory]    Script Date: 03/29/2015 22:13:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_ArticleCategory]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_ArticleCategory]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_ArticleCategory]    Script Date: 03/29/2015 22:13:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_ArticleCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[PublicationID] [int] NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[SeqNo] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

