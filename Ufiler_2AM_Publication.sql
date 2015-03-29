USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_Publication]    Script Date: 03/29/2015 22:15:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_Publication]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_Publication]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_Publication]    Script Date: 03/29/2015 22:15:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_Publication](
	[PublicationID] [int] IDENTITY(1,1) NOT NULL,
	[PortalID] [int] NOT NULL,
	[Publication] [varchar](50) NOT NULL,
	[SeqNo] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

