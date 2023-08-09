CREATE DEFINER=`sbishop`@`%` PROCEDURE `UpdateBooking`(Booking_id int, BookingDate datetime)
BEGIN
UPDATE bookings 
SET BookingSlot = BookingDate WHERE BookingID = Booking_id; 

SELECT concat("Booking"," ",Booking_id, " ", "Updated") AS Confirmation; 
END