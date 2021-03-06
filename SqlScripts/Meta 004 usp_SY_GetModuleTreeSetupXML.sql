IF exists (select * from dbo.sysobjects where id = object_id(N'[usp_SY_GetModuleTreeSetupXML]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure usp_SY_GetModuleTreeSetupXML
GO

CREATE PROCEDURE usp_SY_GetModuleTreeSetupXML
(
	@CompanyID int,
	@UserID int,
	@PermissionRoleID int
)
AS
SET NOCOUNT ON

DECLARE @IsClientAdminRole bit
SELECT 
	@IsClientAdminRole = SYtbPermissionRole.IsClientAdminRole
FROM SYtbPermissionRole
WHERE SYtbPermissionRole.ID = @PermissionRoleID

DECLARE @ModuleIDs TABLE(ModuleID int)
INSERT INTO @ModuleIDs(ModuleID)
SELECT
	ModuleID
FROM SYtbModulePermissionRole
WHERE PermissionRoleID = @PermissionRoleID

SELECT 
	[Text] = TreeNode.Name,
	[NodeID] = CONVERT(nvarchar, TreeNode.ID),
	[Expanded] = 'true',
	[Highlight] = CASE WHEN @IsClientAdminRole = 1 OR TreeNode.Highlight = 1 THEN 'true' ELSE 'false' END,
	[NavigateUrl] = CASE WHEN TreeNode.Url IS NOT NULL THEN TreeNode.Url ELSE NULL END,
	[Icon] = TreeNode.Icon,
	[EnableCheckBox] = CASE WHEN @IsClientAdminRole = 1 THEN 'false' ELSE 'true' END,
	[Checked] = CASE WHEN ModuleIDs.ModuleID > 0 THEN 'true' ELSE 'false' END,
	(SELECT
			CONVERT(nvarchar, Level2TreeNode.ID) AS [TreeNode/@NodeID],
			'true' AS [TreeNode/@Expanded],
			CASE WHEN Level2TreeNode.Highlight = 1 THEN 'true' ELSE 'false' END AS [TreeNode/@Highlight],
			Level2TreeNode.Name AS [TreeNode/@Text],
			CASE WHEN Level2TreeNode.Url IS NOT NULL THEN Level2TreeNode.Url ELSE NULL END AS [TreeNode/@NavigateUrl],
			Level2TreeNode.Icon AS [TreeNode/@Icon],
			CASE WHEN @IsClientAdminRole = 1 THEN 'false' ELSE 'true' END AS [TreeNode/@EnableCheckBox],
			CASE WHEN @IsClientAdminRole =1 OR Level2ModuleIDs.ModuleID > 0 THEN 'true' ELSE 'false' END AS [TreeNode/@Checked]
		FROM SYtbModule AS Level2TreeNode
		LEFT OUTER JOIN @ModuleIDs Level2ModuleIDs
		ON Level2TreeNode.ID = Level2ModuleIDs.ModuleID
		WHERE Level2TreeNode.ParentID = TreeNode.ID
		ORDER BY Level2TreeNode.DisplayOrder
		FOR XML PATH(''),TYPE
		)
FROM SYtbModule AS TreeNode
LEFT OUTER JOIN @ModuleIDs ModuleIDs
ON TreeNode.ID = ModuleIDs.ModuleID
WHERE TreeNode.Active = 1
	AND TreeNode.ParentID = 0
	AND TreeNode.Code NOT LIKE 'Admin%'
ORDER BY TreeNode.DisplayOrder
FOR XML AUTO
--FOR XML AUTO, ROOT('Tree')