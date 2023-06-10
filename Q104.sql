--q1
Select firstname, lastname
from person.person

--q2
SELECT customerid, companyname
FROM [SalesLT].[Customer]
WHERE companyname  like '%n' 

--q3--
SELECT c.*
FROM person.Customer c
JOIN Address a ON c.AddressID = a.AddressID
WHERE a.City IN ('Berlin', 'London')
--q4--
--q3--
SELECT c.*
FROM person.Customer c
JOIN Address a ON c.AddressID = a.AddressID
WHERE a.Country IN ('USA', 'UK')
--q5
select name
from production.product 
order by name
--q6
select name
from production.product 
where name like 'A%'

--q7
SELECT c.*
FROM sales.Customer c
WHERE EXISTS (
    SELECT 1
    FROM Purchasing.PurchaseOrderHeader poh
    WHERE poh.CustomerID = c.CustomerID
)
--q8--
-- not in db
--q9
SELECT *
FROM [SalesLT].[Customer]
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM [SalesLT].[SalesOrderHeader])

--q10
--not in db

--q11
SELECT TOP 1 *
FROM purchasing.PurchaseOrderHeader
ORDER BY OrderDate ASC

--q12
SELECT top 1 *
FROM Purchasing.PurchaseOrderHeader
ORDER BY TotalDue DESC

--q13
select PurchaseOrderID, AVG(OrderQty) AS AvgOrderQty
from purchasing.PurchaseOrderdetail poh
GROUP BY poh.PurchaseOrderID

--q14
--max
SELECT top 1 *
FROM Purchasing.PurchaseOrderDetail
ORDER BY Orderqty DESC
--min
SELECT top 1 *
FROM Purchasing.PurchaseOrderDetail
ORDER BY Orderqty asc

--q17
SELECT *
FROM Purchasing.PurchaseOrderHeader
WHERE OrderDate > '1996-12-31'

--q19
SELECT * 
from Purchasing.PurchaseOrderHeader
where SubTotal>200

--q28
select productid, name
from production.product

--q31
--not in db
--q38
SELECT top 1 orderdate 
from Purchasing.PurchaseOrderHeader
order by SubTotal desc
