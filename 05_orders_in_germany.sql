/*
	List the order id, ship name, ship address, and shipping company name of
	every order that shipped to Germany.
*/
use northwind;

select
	OrderID
    ,ShipName
    ,ShipAddress
from
	orders o
    join shippers s on  s.ShipperID = o.ShipVia
    where ShipCountry = 'Germany'