/*
SET NOCOUNT ON 
SELECT ltrim(rtrim('INSERT INTO SYtbModule('
+'ID,'
+'Code,'
+'Name,'
+'ParentID,'
+'Url,'
+'Icon,'
+'DisplayOrder,'
+'Remark,'
+'Active,'
+'CreateByID,'
+'CreateByName,'
+'LastUpdateByID,'
+'LastUpdateByName,'
+'Expanded,'
+'Highlight,'
+'Target,'
+'CreateDatetime,'
+'LastUpdateDatetime)'
+' VALUES ('
+CONVERT(nvarchar(50),ID)+
+','+ISNULL('N'+''''+REPLACE(Code,'''','''''')+'''','NULL')
+','+ISNULL('N'+''''+REPLACE(Name,'''','''''')+'''','NULL')
+','+CONVERT(nvarchar(50),ParentID)+
+','+ISNULL('N'+''''+REPLACE(Url,'''','''''')+'''','NULL')
+','+ISNULL('N'+''''+REPLACE(Icon,'''','''''')+'''','NULL')
+','+CONVERT(nvarchar(50),DisplayOrder)+
+','+ISNULL('N'+''''+REPLACE(Remark,'''','''''')+'''','NULL')
+','+CONVERT(nvarchar(50),Active)+
+','+ISNULL(CONVERT(nvarchar(50),CreateByID),'NULL')
+','+ISNULL('N'+''''+REPLACE(CreateByName,'''','''''')+'''','NULL')
+','+ISNULL(CONVERT(nvarchar(50),LastUpdateByID),'NULL')
+','+ISNULL('N'+''''+REPLACE(LastUpdateByName,'''','''''')+'''','NULL')
+','+CONVERT(nvarchar(50),Expanded)+
+','+CONVERT(nvarchar(50),Highlight)+
+','+ISNULL('N'+''''+REPLACE(Target,'''','''''')+'''','NULL')
+','+ISNULL(''''+CONVERT(nvarchar,CreateDatetime,121)+'''','NULL')
+','+ISNULL(''''+CONVERT(nvarchar,LastUpdateDatetime,121)+'''','NULL')
+')'))
FROM SYtbModule ORDER BY ID

*/
DELETE FROM SYtbModule
GO
--TRUNCATE TABLE SYtbModule

SET IDENTITY_INSERT SYtbModule ON

INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (1,N'OA',N'OA办公',0,NULL,N'Plugin',1,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (5,N'CRM',N'CRM',0,NULL,NULL,4,NULL,0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (7,N'HR',N'人事管理',0,NULL,N'Group',8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (8,N'Product',N'产品管理',0,NULL,N'Link',10,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (9,N'Com',N'商务管理',0,NULL,N'Lightbulb',15,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (10,N'Project',N'工程管理',0,NULL,N'Package',20,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (11,N'Finance',N'财务管理',0,NULL,N'Coins',25,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (12,N'Report',N'统计决策',0,NULL,N'ChartBar',28,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (14,N'System',N'系统管理',0,NULL,N'Cog',30,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (15,N'Admin',N'后台配置',0,NULL,N'ScriptEdit',99,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (16,N'Home',N'我的桌面',0,N'~/Home.aspx',NULL,0,NULL,0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (17,N'Admin-Mo',N'菜单管理',15,N'~/Pages/Admin/Module.aspx',NULL,2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (18,N'System-Dic',N'数据字典',14,N'~/Pages/Admin/SystemData.aspx',NULL,4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (19,N'Admin-Com',N'客户管理',15,N'~/Pages/Admin/Client.aspx',N'Monitor',6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (22,N'Admin-Log',N'日志',15,N'~/Pages/Admin/SystemLog.aspx',NULL,8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (23,N'Admin-Rep',N'统计报表',15,N'~/Pages/Admin/SystemReport.aspx',N'ChartLine',10,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (24,N'System-User',N'用户管理',14,N'~/Pages/Admin/User.aspx',NULL,20,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (25,N'System-Role',N'角色管理',14,N'~/Pages/Admin/Role.aspx',NULL,2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (26,N'System-RoleP',N'角色权限管理',14,N'~/Pages/Admin/ModuleRole.aspx',NULL,3,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (27,N'OA-Noti',N'公告/通知',1,N'~/Pages/OA/Announcement2.aspx',NULL,2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (28,N'OA-Approve',N'审批',1,NULL,NULL,4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (29,N'OA-Office',N'行政管理',1,NULL,NULL,6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (30,N'OA-Activy',N'活动管理',1,NULL,NULL,8,NULL,0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (31,N'OA-Elearning',N'知识库',1,NULL,NULL,10,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (32,N'CRM-Client',N'客户管理',5,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (33,N'OA-WorkReport',N'工作报告',1,NULL,NULL,5,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (34,N'CRM-ClientRe',N'客户回访',5,NULL,NULL,4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (35,N'Bu-Activity',N'市场活动',3001,NULL,NULL,8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (36,N'System-Dept',N'组织架构',7,N'~/Pages/HR/Org.aspx',N'ChartOrganisation',2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (1001,N'System-UserRole',N'角色用户管理',14,N'~/Pages/Admin/UserRole.aspx',NULL,6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (2002,N'Admin-ComContract',N'客户合同管理',15,N'~/Pages/Admin/ClientContract.aspx',NULL,7,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3001,N'Bu-Mgr',N'业务部',0,NULL,N'PagePortraitShot',2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3002,N'Bu-Input',N'客户录入',3001,N'~/Pages/Business/ClientAdd.aspx',N'BrickAdd',2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3004,N'Bu-Trace',N'客户跟进',3001,N'~/Pages/Business/ClientList.aspx',N'ApplicationViewList',4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3006,N'Bu-Goal',N'目标设置',3001,N'~/Pages/Design/DesignerTarget.aspx',N'Monitor',6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3007,N'Design-Mgr',N'设计部',0,NULL,N'ReportEdit',3,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3010,N'Design-Mgr-Client',N'设计跟进',3007,N'~/Pages/Design/ClientList.aspx',NULL,2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3011,N'Product-Vendor',N'供应商',8,N'~/Pages/Material/Vendor.aspx',N'Basket',12,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3012,N'Product-Mgr',N'库存管理',8,N'~/Pages/Product/Store.aspx',N'House',14,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3013,N'Product-In',N'材料采购',8,N'~/Pages/Product/Buy.aspx',N'HourglassAdd',6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3020,N'Product-Out',N'材料配送',8,N'~/Pages/Product/Out.aspx',N'HouseGo',8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3021,N'Product-StoreList',N'材料库设置',8,N'~/Pages/Product/StoreList.aspx',N'HouseStar',10,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3022,N'Service',N'客服管理',0,NULL,N'UserStar',16,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3024,N'Service-ClientRe',N'客服回访',3022,NULL,NULL,4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3025,N'Service-ClientSer',N'售后管理',3022,NULL,NULL,6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3026,N'Project-Item',N'项目管理',10,NULL,NULL,4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3027,N'Project-Product-In',N'材料采购',10,NULL,NULL,6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3028,N'Project-Product-Fee',N'费用申报',10,NULL,NULL,8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3029,N'Finance-In',N'收款管理',11,NULL,NULL,4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3030,N'Finance-Out',N'付款管理',11,NULL,NULL,8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3031,N'Finance-Salary',N'工资管理',11,NULL,NULL,10,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3032,N'Finance-Mgr',N'财务管理',11,NULL,NULL,12,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3033,N'Finance-Cost',N'利润分析',11,NULL,NULL,14,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3034,N'Finance-PayMgr',N'结算管理',11,NULL,NULL,16,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3035,N'Report-From',N'客户来源分析',12,NULL,NULL,2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3036,N'Report-New',N'新增客户统计',12,NULL,NULL,4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3037,N'Report-Building',N'在建工程统计',12,NULL,NULL,8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3038,N'HR-EE',N'员工管理',7,N'~/Pages/HR/EE.aspx',N'User',4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3039,N'HR-Job',N'职称管理',7,N'~/Pages/HR/Job.aspx',N'Star',8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3040,N'Com-Con',N'合同管理',9,NULL,NULL,4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3041,N'Com-Budget',N'预算管理',9,N'~/Pages/Budget/BudgetTemplate.aspx',N'Coins',8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3042,N'Com-Check',N'核算管理',9,NULL,NULL,10,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3043,N'Com-BaseOp',N'基装定额',9,NULL,NULL,14,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3044,N'Com-Mat',N'材料管理',8,N'~/Pages/Material/Material.aspx',N'AwardStarGold3',18,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3045,N'Com-Price',N'报价管理',9,NULL,NULL,6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3047,N'Designer-Mgr-Budget',N'报价模板',3007,N'~/Pages/Design/BudgetTemplate.aspx',N'Coins',6,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3048,N'OA-Meeting',N'会议记录',1,N'~/Pages/OA/Meeting.aspx',N'NoteEdit',3,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (3049,N'Designer-Target',N'目标管理',3007,N'~/Pages/Design/DesignerTarget.aspx',N'Monitor',8,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (4003,N'Bu-HouseInfo',N'楼盘管理',3001,N'~/Pages/Business/House.aspx',N'PackageWhite',10,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (4006,N'System-City',N'区域设置',14,N'~/Pages/Admin/City.aspx',N'Shape3d',20,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (4008,N'Com-BudgetSetup',N'预算设置',9,N'',N'Link',20,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (4009,N'Com-BudgetSetupDic',N'数据字典',4008,N'~/Pages/Budget/SettingDic.aspx',N'Link',2,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (4012,N'Com-BudgetSetupMType',N'材料分类',4008,N'~/Pages/Budget/SettingMtype.aspx',N'Link',4,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)
INSERT INTO SYtbModule(ID,Code,Name,ParentID,Url,Icon,DisplayOrder,Remark,Active,CreateByID,CreateByName,LastUpdateByID,LastUpdateByName,Expanded,Highlight,Target,CreateDatetime,LastUpdateDatetime) VALUES (4014,N'OA-Cloud',N'云盘',1,N'~/Pages/OA/Cloud.aspx',N'Link',10,NULL,1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL)

SET IDENTITY_INSERT SYtbModule OFF