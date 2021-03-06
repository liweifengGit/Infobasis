IF exists (select * from dbo.sysobjects where id = object_id(N'[usp_SY_CreateNewComanyDefaultData]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure usp_SY_CreateNewComanyDefaultData
GO

CREATE PROCEDURE usp_SY_CreateNewComanyDefaultData
(
	@CompanyID int,
	@UserID int
)
AS
SET NOCOUNT ON

INSERT INTO SYtbPermissionRole
(
	Name,
	Code,
	DisplayOrder,
	IsActive,
	ForbidDelete,
	CompanyID,
	CreateDatetime,
	IsClientAdminRole
)
SELECT
	Name = N'系统管理员',
	Code = 'Admin',
	DisplayOrder = 1,
	IsActive = 1,
	ForbidDelete = 1,
	CompanyID = @CompanyID,
	CreateDatetime = GETDATE(),
	IsClientAdminRole = 1
WHERE NOT EXISTS(
	SELECT 1 FROM SYtbPermissionRole
	WHERE SYtbPermissionRole.CompanyID = @CompanyID
		AND SYtbPermissionRole.Code = 'Admin'
	)

INSERT INTO SYtbUserPermissionRole
(
	UserID,
	PermissionRoleID,
	CompanyID,
	CreateByID,
	CreateByName,
	CreateDatetime
)
SELECT
	UserID = SYtbUser.ID,
	PermissionRoleID = SYtbPermissionRole.ID,
	CompanyID = SYtbCompany.ID,
	CreateByID = 0,
	CreateByName = 'System',
	CreateDatetime = GETDATE()
FROM SYtbUser
INNER JOIN SYtbCompany
ON SYtbUser.CompanyID = SYtbCompany.ID
AND SYtbCompany.ID = @CompanyID
INNER JOIN SYtbPermissionRole
ON SYtbPermissionRole.CompanyID = SYtbCompany.ID
AND SYtbPermissionRole.Code = 'Admin'
AND SYtbUser.ID = @UserID
AND NOT EXISTS(SELECT 1 FROM SYtbUserPermissionRole
				WHERE SYtbUserPermissionRole.CompanyID = SYtbCompany.ID
					AND SYtbUserPermissionRole.UserID = SYtbUser.ID
					AND SYtbUserPermissionRole.PermissionRoleID = SYtbPermissionRole.ID)

DECLARE @Roles TABLE(Name nvarchar(30), Code nvarchar(20), DisplayOrder int)
INSERT INTO @Roles(Name, Code, DisplayOrder)
SELECT '分部经理', 'Manager', 4
union all
SELECT '项目经理', 'EnManager', 5
Union all
SELECT '设计师', 'Designer', 6 
Union all
SELECT '业务员', 'Sale', 4
Union all
SELECT '财务主管', 'Finance', 8
Union all
SELECT '工程监理', 'EnOb', 10
Union all
SELECT '人事主管', 'HR', 12
Union all
SELECT '总裁', 'Chairman', 2
Union all
SELECT '出纳', 'Account', 16
Union all
SELECT '市场部经理', 'MarketingM', 14
Union all
SELECT '预算员', 'Bugdet', 18
Union all
SELECT '材料员', 'Material', 20
Union all
SELECT '采购员', 'Pur', 22
Union all
SELECT '客服', 'Service', 24
union all
SELECT '财务助理', 'FinanceAss', 28
union all
select '总经理', 'GM', 3
union all
select '财务总监', 'CFO', 30
union all 
select '核算员', 'Audit', 32
union all 
select '行政主管', 'AdminStuff', 36


INSERT INTO SYtbPermissionRole
(
	Name,
	Code,
	DisplayOrder,
	IsActive,
	ForbidDelete,
	CompanyID,
	CreateDatetime,
	IsClientAdminRole
)
SELECT
	Name = Roles.Name,
	Code = Roles.Code,
	DisplayOrder = DisplayOrder,
	IsActive = 1,
	ForbidDelete = 0,
	CompanyID = @CompanyID,
	CreateDatetime = GETDATE(),
	IsClientAdminRole = 0
FROM @Roles Roles
WHERE NOT EXISTS(
	SELECT 1 FROM SYtbPermissionRole
	WHERE SYtbPermissionRole.CompanyID = @CompanyID
		AND SYtbPermissionRole.Code = Roles.Code
	)

--<f:RadioItem Text="业务部门" Value="1" />
--<f:RadioItem Text="设计部门" Value="2" />
--<f:RadioItem Text="财务部门" Value="3" />
--<f:RadioItem Text="工程部门" Value="4" />
--<f:RadioItem Text="客服部门" Value="5" />
--<f:RadioItem Text="行政部门" Value="6" />
--<f:RadioItem Text="市场部门" Value="7" />
--<f:RadioItem Text="总办" Value="8" />

DECLARE @Depts TABLE(Name nvarchar(100), Code nvarchar(20), DisplayOrder int, DepartmentControlType int, DepartmentControlTypeName nvarchar(100))
INSERT INTO @Depts(Name, Code, DisplayOrder, DepartmentControlType, DepartmentControlTypeName)
SELECT '总办', 'Exoffice', 1, 8, '总办'
UNION ALL
SELECT '财务部', 'Finance', 4, 3, '财务部门'
UNION ALL
SELECT '行政部', 'AdminStuff', 6, 6, '行政部门'
UNION ALL
SELECT '商务部', 'Business', 8, NULL,''
UNION ALL
SELECT '设计部', 'Designer', 10, 2, '设计部门'
UNION ALL
SELECT '项目部', 'Project',12, 4, '工程部门'
UNION ALL
SELECT '市场部', 'Market', 16, 7, '市场部门'
UNION ALL
SELECT '客服部', 'Service', 18, 5, '客服部门'


INSERT INTO SYtbDepartment(Name, Code, ParentID, DepartmentType, Enabled, DisplayOrder, DepartmentControlType, DepartmentControlTypeName, CompanyID)
SELECT Name, Code, NULL, 0, 1, DisplayOrder, DepartmentControlType, DepartmentControlTypeName, @CompanyID
FROM @Depts Depts
WHERE NOT EXISTS(SELECT 1 FROM SYtbDepartment
				WHERE SYtbDepartment.Code = Depts.Code
				AND SYtbDepartment.CompanyID = @CompanyID)


--SELECT * FROM SYtbDepartment

DECLARE @JobRoles TABLE(Code nvarchar(20), Name nvarchar(100), DisplayOrder int)
INSERT INTO @JobRoles(Name, Code, DisplayOrder)
SELECT '分部经理', 'Manager', 4
union all
SELECT '项目经理', 'EnManager', 5
Union all
SELECT '平面设计师', 'DesignerP', 6 
Union all
SELECT '业务员', 'Sale', 4
Union all
SELECT '财务主管', 'Finance', 8
Union all
SELECT '工程监理', 'EnOb', 10
Union all
SELECT '人事主管', 'HR', 12
Union all
SELECT '总裁', 'Chairman', 2
Union all
SELECT '出纳', 'Account', 16
Union all
SELECT '市场部经理', 'MarketingM', 14
Union all
SELECT '预算员', 'Bugdet', 18
Union all
SELECT '材料员', 'Material', 20
Union all
SELECT '采购员', 'Pur', 22
Union all
SELECT '客服', 'Service', 24
union all
SELECT '财务助理', 'FinanceAss', 28
union all
select '总经理', 'GM', 3
union all
select '财务总监', 'CFO', 30
union all 
select '核算员', 'Audit', 32
union all 
select '行政主管', 'AdminStuff', 36
union all 
select '方案设计师', 'DesignerF', 38
union all 
select '工程部助理', 'ENPA', 39
union all 
select '设计师助理', 'DeisngerPA', 46

INSERT INTO SYtbJobRole(Code, Name, ParentID, DisplayOrder, IsActive, CompanyID)
SELECT Code, Name, 0, DisplayOrder, 1, @CompanyID FROM @JobRoles JobRoles
WHERE NOT EXISTS(SELECT 1 FROM SYtbJobRole
				WHERE SYtbJobRole.Code = JobRoles.Code
				AND SYtbJobRole.CompanyID = @CompanyID)

DECLARE @EntityList TABLE(Name nvarchar(60), Code nvarchar(20), DisplayOrder int, GroupCode nvarchar(20))
INSERT INTO @EntityList(Name, Code, DisplayOrder, GroupCode)
SELECT '废单类型', 'FD', 2, 'System'
UNION ALL
SELECT '留言类型', 'LY', 4, 'System'
UNION ALL
SELECT '客户需求类型', 'CRT', 6, 'System'
UNION ALL
SELECT '设计效果', 'DEResult', 8, 'System'
UNION ALL
SELECT '风格', 'Style', 10, 'System'
UNION ALL
SELECT '装修要求', 'DeRequest', 12, 'System'
UNION ALL
SELECT '工程验收阶段', 'ProjectReStep', 16, 'System'
UNION ALL
SELECT '会议类型', 'MeetingType', 18, 'System'
UNION ALL
SELECT '客户年龄段分类', 'ClientAge', 20, 'System'
UNION ALL
SELECT '客户状态分类', 'ClientStatus', 22, 'System'
UNION ALL
SELECT '房屋类型', 'HomeType', 24, 'System'
UNION ALL
SELECT '房型', 'HomeNum', 26, 'System'
UNION ALL
SELECT '颜色偏好', 'ColorReq', 28, 'System'
UNION ALL
SELECT '单位', 'Unit', 32, 'System'

UNION ALL
SELECT '预算类型', 'YSLX', 2, 'Budget'
UNION ALL
SELECT '房间部位', 'FJBW', 4, 'Budget'
UNION ALL
SELECT '功能部位', 'GNBW', 8, 'Budget'
UNION ALL
SELECT '工种', 'GZ', 10, 'Budget'
UNION ALL
SELECT '工程名称', 'GCXM', 12, 'Budget'

UNION ALL
SELECT '主材', 'MaterialZC', 2, 'Material'
UNION ALL
SELECT '辅材', 'MaterialFC', 4, 'Material'
UNION ALL
SELECT '软装', 'MaterialRZ', 8, 'Material'
UNION ALL
SELECT '设备', 'MaterialSB', 10, 'Material'
UNION ALL
SELECT '景观', 'MaterialJG', 12, 'Material'


INSERT INTO SYtbEntityList(Name, Code, IsActive, HasColorDefine, CompanyID, DisplayOrder, GroupCode)
SELECT Name, Code, 1, 0, @CompanyID, DisplayOrder, EntityList.GroupCode
FROM @EntityList EntityList
WHERE NOT EXISTS(SELECT 1 FROM SYtbEntityList
					WHERE SYtbEntityList.CompanyID = @CompanyID
						AND SYtbEntityList.Code = EntityList.Code
						)


DECLARE @EntityListValue TABLE(EntityCode nvarchar(20), Name nvarchar(60), Code nvarchar(20), DisplayOrder int)
INSERT INTO @EntityListValue(EntityCode, Name, Code, DisplayOrder)
SELECT 'FD', '样板房不满意', 'FD1', 2
UNION ALL
SELECT 'FD', '预算不满意', 'FD2', 5
UNION ALL
SELECT 'FD', '设计不满意', 'FD3', 6
UNION ALL
SELECT 'FD', '网上投诉', 'FD4', 8
UNION ALL
SELECT 'FD', '服务不满意', 'FD5',9
UNION ALL
SELECT 'FD', '客户不适合', 'FD6',10
UNION ALL
SELECT 'FD', '其他', 'FD7',11

UNION ALL
SELECT 'DEResult', '满足经济实用要求', 'DER1',1
UNION ALL
SELECT 'DEResult', '合理布置，拓展空间', 'DER2',2
UNION ALL
SELECT 'DEResult', '强调艺术格调，展现个人魅力', 'DER3',3
UNION ALL
SELECT 'DEResult', '其他', 'DER4',4


UNION ALL
SELECT 'Style', '现代时尚风格', 'Style1',1
UNION ALL
SELECT 'Style', '简约风格', 'Style2',2
UNION ALL
SELECT 'Style', '中国古典传统风格', 'Style3',3
UNION ALL
SELECT 'Style', '欧洲古典+现代时尚风格', 'Style4',4
UNION ALL
SELECT 'Style', '欧洲古典式', 'Style5',5
UNION ALL
SELECT 'Style', '其他', 'Style6',6


UNION ALL
SELECT 'DeRequest', '清水', 'DEReq1',1
UNION ALL
SELECT 'DeRequest', '混水', 'DEReq2',2
UNION ALL
SELECT 'DeRequest', '清水混水结合', 'DEReq3',3
UNION ALL
SELECT 'DeRequest', '其他', 'DEReq4',4

UNION ALL
SELECT 'MeetingType', '部门周晨会 ', 'MeetingType1',1
UNION ALL
SELECT 'MeetingType', '企划会议 ', 'MeetingType2',2
UNION ALL
SELECT 'MeetingType', '技术升级', 'MeetingType3',3
UNION ALL
SELECT 'MeetingType', '公司月会', 'MeetingType4',4
UNION ALL
SELECT 'MeetingType', '主管会议', 'MeetingType5',5
UNION ALL
SELECT 'MeetingType', '部门周会', 'MeetingType6',6
UNION ALL
SELECT 'MeetingType', '后勤会议', 'MeetingType7',7

UNION ALL
SELECT 'ClientAge', '20-30', 'Age1',1
UNION ALL
SELECT 'ClientAge', '30-40', 'Age2',2
UNION ALL
SELECT 'ClientAge', '40-50', 'Age3',3
UNION ALL
SELECT 'ClientAge', '50-60', 'Age3',4
UNION ALL
SELECT 'ClientAge', '60以上', 'Age4',5


UNION ALL
SELECT 'HomeType', '别墅', 'BS',1
UNION ALL
SELECT 'HomeType', '错层房', 'CC',2
UNION ALL
SELECT 'HomeType', '叠加别墅', 'DJBS',3
UNION ALL
SELECT 'HomeType', '独栋别墅', 'DDBS',4
UNION ALL
SELECT 'HomeType', '复式房', 'FS',5
UNION ALL
SELECT 'HomeType', '工装', 'GZ',6
UNION ALL
SELECT 'HomeType', '公寓房', 'GY',7
UNION ALL
SELECT 'HomeType', '联体别墅', 'LTBS',8
UNION ALL
SELECT 'HomeType', '跃层房', 'YC',9

UNION ALL
SELECT 'HomeNum', '2房1厅1卫1厨', '2H11',1
UNION ALL
SELECT 'HomeNum', '2房2厅1卫1厨', '2H2',2
UNION ALL
SELECT 'HomeNum', '2房2厅2卫1厨', '2H22',3
UNION ALL
SELECT 'HomeNum', '3房1厅1卫1厨', '3H11',4
UNION ALL
SELECT 'HomeNum', '3房2厅1卫1厨', '3H2',5


UNION ALL
SELECT 'ClientStatus', '废单', '4',9
UNION ALL
SELECT 'ClientStatus', '废单申请', '7',10
UNION ALL
SELECT 'ClientStatus', '交定客户', '0',8
UNION ALL
SELECT 'ClientStatus', '量房客户', '1',4
UNION ALL
SELECT 'ClientStatus', '其他', '10',12
UNION ALL
SELECT 'ClientStatus', '洽谈中客户(B类)', '3',3
UNION ALL
SELECT 'ClientStatus', '潜在客户', '8',8
UNION ALL
SELECT 'ClientStatus', '设计协议(A类)', '6',6
UNION ALL
SELECT 'ClientStatus', '施工合同', '9',9
UNION ALL
SELECT 'ClientStatus', '退单', '5',5
UNION ALL
SELECT 'ClientStatus', '有意向客户(C类)', '2',2

UNION ALL
SELECT 'ColorReq', '暖黄', 'Yellow',1
UNION ALL
SELECT 'ColorReq', '深咖', 'Color2',2


INSERT INTO SYtbEntityListValue(EntityListID, Name, Code,Value, IsActive, CompanyID, DisplayOrder)
SELECT SYtbEntityList.ID, EntityListValue.Name, EntityListValue.Code, EntityListValue.Code, 1, @CompanyID, EntityListValue.DisplayOrder
FROM @EntityListValue EntityListValue
INNER JOIN SYtbEntityList
ON SYtbEntityList.Code = EntityListValue.EntityCode
WHERE NOT EXISTS(SELECT 1 FROM SYtbEntityListValue
					WHERE SYtbEntityListValue.CompanyID = @CompanyID
						AND SYtbEntityListValue.Code = EntityListValue.Code
						AND SYtbEntityListValue.EntityListID = SYtbEntityList.ID
						)