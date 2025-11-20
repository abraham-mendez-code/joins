/*
	List the product id, product name, unit price, category name, and supplier
	name of every product. Order by product name.
*/
use northwind;

select
	ProductID
    ,ProductName
    ,UnitPrice
    ,CategoryName
    ,CompanyName
from
	products p
    join categories c on p.CategoryID = c.CategoryID
    join suppliers s on p.SupplierID = s.SupplierID
order by
	ProductName