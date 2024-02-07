USE ZAGIDB;
GO

SELECT productid, productname, vendorid, productprice
FROM product
WHERE productprice <= 110 AND
              CATEGORYID = 'FW'
ORDER BY productprice DESC;
GO

SELECT productid, productname, vendorid, productprice
FROM product
WHERE productprice <= 110 AND
              categoryid = 'FW'
ORDER BY categoryid, productprice;
GO

SELECT productid, productname, categoryid, vendorid, productprice
FROM product
ORDER BY categoryid, productprice;
GO

--AGGREGATE Functions

SELECT count(*)
FROM product;
GO

SELECT AVG(productprice)
FROM product;
GO

Select count(distinct vendorid)
From product;
GO

--Retrieve the number of products, average product price, lowest product price, and highest product price in the CP product category:

select count(*), avg(productprice), min(Productprice), max(productprice)
from product
where categoryid = 'CP';
GO

--To Specify Decimal Places:
--Use ROUND:

select count(*), round(avg(productprice), 2), min(Productprice), max(productprice)
from product
where categoryid = 'CP';
GO

--or use TRUNC:

select count(*), left(avg(productprice),len(avg(productprice))-4) as "Trim Average", min(Productprice), max(productprice)
from product
where categoryid = 'CP';
GO