USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_ArticleAssetData]    Script Date: 03/29/2015 22:13:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_ArticleAssetData]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_ArticleAssetData]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_ArticleAssetData]    Script Date: 03/29/2015 22:13:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_ArticleAssetData](
	[AssetID] [int] IDENTITY(1,1) NOT NULL,
	[PublicationID] [int] NOT NULL,
	[AssetName] [varchar](255) NULL,
	[ArticleID] [int] NULL,
	[IndexNo] [int] NULL,
	[MimeType] [varchar](255) NULL,
	[AssetCredit] [varchar](255) NULL,
	[AssetDescription] [varchar](255) NULL,
	[ImagePath] [varchar](255) NULL,
	[ThumbnailPath] [varchar](255) NULL,
	[Data] [image] NULL,
	[DateUploaded] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

