create table PRODUCTS
(
pID int primary key identity,
pName nvarchar(50),
pPrice float,
CategoryID int,
pImage image
)

select pID,pName,pPrice,CategoryID,c.catName from PRODUCTS p inner join CATEGORY c on c.catID = p.CategoryID
