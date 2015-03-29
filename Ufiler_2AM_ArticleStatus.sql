USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_ArticleStatus]    Script Date: 03/29/2015 22:14:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_ArticleStatus]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_ArticleStatus]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_ArticleStatus]    Script Date: 03/29/2015 22:14:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_ArticleStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[PublicationID] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Releasable] [bit] NULL,
	[SeqNo] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

