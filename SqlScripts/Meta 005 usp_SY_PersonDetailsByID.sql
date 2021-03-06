IF exists (select * from dbo.sysobjects where id = object_id(N'[usp_SY_PersonDetailsByID]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure usp_SY_PersonDetailsByID
GO

CREATE PROCEDURE usp_SY_PersonDetailsByID
(
	@UserID int
)
AS
SET NOCOUNT ON

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
	SYtbUser.CreateByID,
	SYtbUser.CreateByName,
	SYtbUser.LastUpdateByID,
	SYtbUser.LastUpdateByName,
	SYtbUser.CreateDatetime,
	SYtbUser.LastUpdateDatetime,
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
