use UHG

Alter trigger TriggerAfter
ON  dbo.tblCustomer 
AFTER INSERT
AS
BEGIN
	declare @CustID int
	select @CustID = CustID from inserted
	update tblCustomer set Total = Price * QTY
	where CustID = @CustID
END

insert into tblCustomer (CustID,CustName,ProductName,Price,QTY)
values (3,'Poornashree','Lays',35,7) 











