/*
	What is the product name(s) and categories of the most expensive
	products? HINT: Find the max price in a subquery and then use that in
	your more complex query that joins products with categories
*/
use northwind;

select
	ProductName
    ,CategoryName
from
	products p
    join categories c on p.CategoryID = c.CategoryID
where
	UnitPrice = (
				select
					max(UnitPrice)
				from
					products
				)