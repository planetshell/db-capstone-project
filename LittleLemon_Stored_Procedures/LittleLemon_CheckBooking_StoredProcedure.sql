CREATE DEFINER=`sbishop`@`%` PROCEDURE `CheckBooking`(Table_No int, BookingDate datetime)
BEGIN
declare BookingStatus varchar(20);
select TableNo into @x from bookings where 
BookingSlot = BookingDate;
if @x = Table_No then set BookingStatus = "Booked";
else set BookingStatus = "Available";
end if;
select concat("Table","",Table_No," ", "is", " " , BookingStatus) AS BookingStatus;
END