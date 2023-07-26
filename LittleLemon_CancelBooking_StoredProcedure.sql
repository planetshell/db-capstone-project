CREATE DEFINER=`sbishop`@`%` PROCEDURE `CancelBooking`(Booking_id int)
BEGIN
DELETE FROM bookings WHERE BookingID = Booking_id;

SELECT concat("Booking"," ",Booking_id, " ", "Cancelled") AS Confirmation; 
END