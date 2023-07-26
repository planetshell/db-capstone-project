CREATE DEFINER=`sbishop`@`%` PROCEDURE `AddValidBooking`(Table_No int, BookingDate datetime)
BEGIN
DECLARE BookingStatus varchar(20);
start transaction;
INSERT INTO bookings(BookingID, TableNo, CustomerID, BookingSlot, EmployeeID)
VALUES(7,Table_No,6,BookingDate, 4); 

SELECT Count(TableNo) INTO @x FROM bookings WHERE BookingSlot = BookingDate;
select @x;
IF @x > 1 THEN
SET BookingStatus = "Booked";
ROLLBACK;
SELECT concat("Table"," ", Table_No, " ", "is already", " ", BookingStatus, " ", "Booking Cancelled") AS BookingStatus;
ELSE set BookingStatus = "Available";
COMMIT;
SELECT concat("Table", " " , Table_No, " ", "is", " ",BookingStatus, " ", "New Booking Added") AS BookingStatus;
END IF;
END