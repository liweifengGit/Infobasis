IF exists (select * from dbo.sysobjects where id = object_id(N'[usp_SY_GetDeptByType]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure usp_SY_GetDeptByType
GO

CREATE PROCEDURE usp_SY_GetDeptByType
(
	@CompanyID int,
	@DepartmentControlType int,
	@ProvinceID int = 0
)
AS
SET NOCOUNT ON

DECLARE @Depts TABLE(ID int, Name nvarchar(100), Code nvarchar(30), ParentID int, LeaderName nvarchar(30), Level int)
INSERT INTO @Depts(ID, Name, Code, ParentID, LeaderName, Level)
SELECT ID, Name, Code, ParentID, LeaderName, 0
FROM SYtbDepartment
WHERE CompanyID = @CompanyID
	AND DepartmentControlType = @DepartmentControlType
	AND ISNULL(SYtbDepartment.ParentID, 0) = 0
	AND (@ProvinceID = 0 OR @ProvinceID > 0 AND SYtbDepartment.ProvinceID = @ProvinceID)

INSERT INTO @Depts(ID, Name, Code, ParentID, LeaderName, Level)
SELECT SYtbDepartment.ID, SYtbDepartment.Name, SYtbDepartment.Code, SYtbDepartment.ParentID, SYtbDepartment.LeaderName, 1
FROM @Depts Depts
INNER JOIN SYtbDepartment
ON SYtbDepartment.ParentID = Depts.ID
WHERE SYtbDepartment.CompanyID = @CompanyID

INSERT INTO @Depts(ID, Name, Code, ParentID, LeaderName, Level)
SELECT SYtbDepartment.ID, SYtbDepartment.Name, SYtbDepartment.Code, SYtbDepartment.ParentID, SYtbDepartment.LeaderName, 2
FROM @Depts Depts
INNER JOIN SYtbDepartment
ON SYtbDepartment.ParentID = Depts.ID
AND Depts.Level = 1
WHERE SYtbDepartment.CompanyID = @CompanyID

INSERT INTO @Depts(ID, Name, Code, ParentID, LeaderName, Level)
SELECT SYtbDepartment.ID, SYtbDepartment.Name, SYtbDepartment.Code, SYtbDepartment.ParentID, SYtbDepartment.LeaderName, 3
FROM @Depts Depts
INNER JOIN SYtbDepartment
ON SYtbDepartment.ParentID = Depts.ID
AND Depts.Level = 2
WHERE SYtbDepartment.CompanyID = @CompanyID

SELECT * FROM @Depts