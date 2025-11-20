/*
	List the order id, order date, ship name, ship address of all orders that
	ordered "Sasquatch Ale"?
*/
use northwind;

select
	o.OrderID
    ,OrderDate
    ,ShipName
    ,ShipAddress
from
	orders o
    join `order details` od on o.OrderID = od.OrderID
    join products p on od.ProductID = p.ProductID
where
	p.ProductName = 'Sasquatch Ale'