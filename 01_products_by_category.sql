# List the product id, product name, unit price and category name of all
# products. Order by category name and within that, by product name.
use northwind;

select
	ProductID
    ,ProductName
    ,UnitPrice
    ,CategoryName
from
	products p
	join categories c on p.categoryID = c.CategoryID
order by
	CategoryName
    ,ProductName