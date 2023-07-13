CREATE DEFINER=`sbishop`@`%` PROCEDURE `GetMaxQuantity`()
BEGIN
SELECT max(Quantity) as MaxQuantityOrdered FROM orders;
END