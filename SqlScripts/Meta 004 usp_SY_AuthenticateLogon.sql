IF exists (select * from dbo.sysobjects where id = object_id(N'[usp_SY_AuthenticateLogon]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure usp_SY_AuthenticateLogon
GO

CREATE PROCEDURE usp_SY_AuthenticateLogon
(
	@CompanyID int,
	@UserName nvarchar(60),
	@Password nvarchar(100),
	@IsGuest bit= 0
)
AS
SET NOCOUNT ON

DECLARE
   @UserID int

SELECT TOP 1
   @UserID = SYtbUser.ID
FROM SYtbUser
WHERE (SYtbUser.Name = @UserName)
	AND SYtbUser.CompanyID = @CompanyID
	AND SYtbUser.Enabled = 1
	AND (AccountLockedUntil IS NULL OR AccountLockedUntil <= GETDATE() )

IF (@UserID IS NOT NULL)
BEGIN

   UPDATE SYtbUser
   SET LastLogonDate = getdate(), LogonCount = LogonCount + 1
   WHERE ID = @UserID

	SELECT
		SYtbUser.ID,
		SYtbUser.Name,
		SYtbUser.Email,
		Token,
		TokenCreationDate,
		LastLogonDate,
		LogonCount,
		FailedLogonCount,
		LastFailedLogonDate,
		LegalAcceptDate,
		MustChangePassword,
		AccountLockedUntil,
		Enabled,
		DefaultPageSize,
		IsClientAdmin,
		CompanyID,
		SYtbCompany.CreateByID,
		SYtbCompany.CreateByName,
		SYtbCompany.LastUpdateByID,
		SYtbCompany.LastUpdateByName,
		SYtbCompany.CreateDatetime,
		SYtbCompany.LastUpdateDatetime,
		ChineseName,
		EnglishName,
		UserType,
		Remark,
		UserPortraitPath,
		SYtbCompany.Name AS CompanyName,
		SYtbCompany.CompanyCode AS CompanyCode,
		SYtbCompany.CompanyLogo AS CompanyLogo			
	FROM SYtbUser
	INNER JOIN SYtbCompany
	ON SYtbUser.CompanyID = SYtbCompany.ID
	WHERE SYtbUser.ID = @UserID

END