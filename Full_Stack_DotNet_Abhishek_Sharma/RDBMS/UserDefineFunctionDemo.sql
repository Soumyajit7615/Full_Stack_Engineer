use UHG


select * into tblEmployeeWithSalary from tblEmployee
select * from  tblEmployeeWithSalary

alter table tblEmployeeWithSalary add Salary int
--CREATE FUNCTION
alter function FunCalAvgSalDeptWise(@DeptID int)
returns int
AS
BEGIN
declare @AvgSal int
select @AvgSal = AVG(Salary) from tblEmployeeWithSalary where DeptID = @DeptID
return @AvgSal
END

--CALL FUNCTION
print dbo.FunCalAvgSalDeptWise(102)
-- CALLING FUNCTION IN SQL STATEMENT
select * from tblEmployeeWithSalary
where salary > dbo.FunCalAvgSalDeptWise(102) and DeptID = 102







 