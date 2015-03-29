USE [ufiler]
GO

/****** Object:  StoredProcedure [dbo].[Ufiler_2AM_UpdateUserSetting]    Script Date: 03/29/2015 22:49:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ufiler_2AM_UpdateUserSetting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Ufiler_2AM_UpdateUserSetting]
GO

USE [ufiler]
GO

/****** Object:  StoredProcedure [dbo].[Ufiler_2AM_UpdateUserSetting]    Script Date: 03/29/2015 22:49:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Ufiler_2AM_UpdateUserSetting] 
	@UserID					int,
	@SettingName		varchar(50),
	@SettingValue		varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

-- Try the UserID/SettingValue to see if a value exists
DECLARE @RecsPerPageSetting varchar(50)
SELECT @RecsPerPageSetting = SettingValue
	FROM   dbo.Ufiler_2AM_UserSettings
	WHERE  UserID = @UserID AND SettingName = @SettingName
 
IF @RecsPerPageSetting IS NOT NULL
	-- Update Record
	BEGIN
		UPDATE dbo.Ufiler_2AM_UserSettings
			SET SettingValue = @SettingValue
			WHERE  UserID = @UserID AND SettingName = @SettingName
	END
ELSE 
	-- Insert New Record
	BEGIN
		INSERT INTO dbo.Ufiler_2AM_UserSettings (UserID, SettingName, SettingValue)
		VALUES (
			@UserID,@SettingName,@SettingValue)
END

END

GO

