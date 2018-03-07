IF exists (select * from dbo.sysobjects where id = object_id(N'[usp_SY_GetEmployeeByDept]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure usp_SY_GetEmployeeByDept
GO

CREATE PROCEDURE usp_SY_GetEmployeeByDept
(
	@CompanyID int,
	@DeptID int
)
AS
SET NOCOUNT ON

SELECT *
FROM SYtbUser
WHERE CompanyID = @CompanyID
AND DepartmentID = @DeptID