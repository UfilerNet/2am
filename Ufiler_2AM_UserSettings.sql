USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_UserSettings]    Script Date: 03/29/2015 22:16:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_UserSettings]') AND type in (N'U'))
DROP TABLE [dbo].[Ufiler_2AM_UserSettings]
GO

USE [ufiler]
GO

/****** Object:  Table [dbo].[Ufiler_2AM_UserSettings]    Script Date: 03/29/2015 22:16:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ufiler_2AM_UserSettings](
	[UserID] [int] NOT NULL,
	[SettingName] [varchar](50) NOT NULL,
	[SettingValue] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

