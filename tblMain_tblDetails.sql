Create Table tblMain
(
MainID int Primary key identity,
aDate date,
aTime nvarchar(50),
TableName nvarchar(50),
WaiterName nvarchar(50),
status nvarchar(50),
orderType nvarchar(50),
total float,
received float,
change float
)

Create table tblDetails
(
DetailID int Primary key identity,
MainID int,
proID int,
qty int,
price float,
amount float
)

select * from tblMain inner join tblDetails on tblMain.MainID = tblDetails.MainID;

Select PRODUCTS.pName, tblDetails.qty 
from tblMain 
inner join tblDetails on tblMain.MainID = tblDetails.MainID
inner join PRODUCTS on PRODUCTS.pID = tblDetails.proID
where tblMain.MainID = tblDetails.MainID;

Select * from tblMain where status = 'Complete';

Select * from tblMain inner join tblDetails on
                                tblMain.MainID=tblDetails.MainID inner join PRODUCTS
                                 on PRODUCTS.pID = tblDetails.proID where tblMain.MainID=tblDetails.MainID;