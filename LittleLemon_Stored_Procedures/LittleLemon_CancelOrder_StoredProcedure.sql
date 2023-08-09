CREATE DEFINER=`sbishop`@`%` PROCEDURE `CancelOrder`(Order_ID Int)
BEGIN
DELETE FROM orders WHERE OrderID = Order_ID;
SELECT CONCAT("Order"," ",Order_ID," ", "is Cancelled") AS Confirmation; 
END