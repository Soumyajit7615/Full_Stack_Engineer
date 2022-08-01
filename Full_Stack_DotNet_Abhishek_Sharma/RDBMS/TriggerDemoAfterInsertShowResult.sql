--TRIGGER
--DDL
--DML
--CLR
--LOGON

create trigger TEmpInsertUpdateAndDelete
ON [dbo].[tblEmployee]
AFTER INSERT, UPDATE,DELETE
AS
BEGIN
SELECT tblEmployee.EmpID, tblEmployee.EmpName, tblEmployee.DeptID, tblDepartment.DeptName, tblDepartment.DeptLoc
FROM tblEmployee INNER JOIN
tblDepartment ON tblEmployee.DeptID = tblDepartment.DeptId
END

select * from tblDepartment
select * from tblEmployee

insert into tblEmployee values ('Shubham',106)
