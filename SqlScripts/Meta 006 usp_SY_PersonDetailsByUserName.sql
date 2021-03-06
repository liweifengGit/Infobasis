IF exists (select * from dbo.sysobjects where id = object_id(N'[usp_SY_PersonDetailsByUserName]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure usp_SY_PersonDetailsByUserName
GO

CREATE PROCEDURE usp_SY_PersonDetailsByUserName
(
	@CompanyID int,
	@UserName nvarchar(60)
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
	SYtbUser.Remark,
	UserPortraitPath,
	SYtbCompany.Name AS CompanyName,
	SYtbCompany.CompanyCode AS CompanyCode,
	SYtbCompany.CompanyLogo AS CompanyLogo
FROM SYtbUser
INNER JOIN SYtbCompany
ON SYtbUser.CompanyID = SYtbCompany.ID
WHERE SYtbUser.Name = @UserName
	AND SYtbCompany.ID = @CompanyID
