/*
	List the product id, product name, unit price and supplier name of all
	products that cost more than $75. Order by product name.
*/
use northwind;

select 
	ProductID
    ,ProductName
    ,UnitPrice
    ,CompanyName
from
	products p
    join suppliers s on p.SupplierID = s.SupplierID
where
	UnitPrice > 75
order by
	ProductName
