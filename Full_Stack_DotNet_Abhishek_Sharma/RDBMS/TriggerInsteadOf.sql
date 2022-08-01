use UHG
create table tblCustomer
(
CustID int PRIMARY KEY,
CustName varchar(30),
ProductName varchar(20),
Price int,
QTY int,
Total int
)

CREATE TRIGGER TriggerInsteadOf
ON tblCustomer
INSTEAD OF INSERT --before insert or update or delete
AS
BEGIN
declare @CustName varchar(30)
-- SELECT THE NAME / VALUE
select @CustName = CustName from inserted
--check the name of customer
	if(LEN(@CustName)>=8)
	BEGIN
	--When everything is ok , then insert in
    insert into tblCustomer select * from inserted
	END
END

select * from tblCustomer

insert into tblCustomer (CustID,CustName) values (1,'Abhishek')
insert into tblCustomer (CustID,CustName) values (2,'Kiran')







 
