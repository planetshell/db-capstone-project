CREATE DEFINER=`sbishop`@`%` PROCEDURE `AddBooking`(Booking_id int,Customer_id int,BookingDate datetime, Table_No int)
BEGIN
insert into bookings(BookingID,TableNo, CustomerID, BookingSlot, EmployeeID) 
values(Booking_id, Table_No, Customer_id, BookingDate, 3); 

Select "New Booking Added" AS Confirmation;

END