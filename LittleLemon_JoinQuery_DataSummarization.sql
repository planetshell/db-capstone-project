select customer.CustomerID, concat(customer.FirstName," ", customer.LastName) as FullName, orders.OrderID, orders.TotalCost as Cost, menu.MenuType, menuitems.Name from orders
 inner join customer on customer.CustomerID = orders.CustomerID 
 inner join menu on orders.MenuID = menu.MenuID
 inner join menuitems on menu.ItemID = menuitems.ItemID 
 where orders.TotalCost > 150;