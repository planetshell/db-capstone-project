# Little Lemon Database Capstone Project

## Introduction
This project is helps Little Lemon build and management. To accomplish this, the following tasks were performed:

### Choosing the right Data Model
After comparing various data models, the entity relationship data model is the best fit for Little Lemon data requirments.This model present each table as an entity with a set of attribules in a ER diagram. Based on Little Lemon business structure, we have dentified the following entitites and attributes. 

#### Little Lemon Entities with Attributes 
1. Customer - [CustomerID, FirstName, LastName, Email, PhoneNumber]
2. Orders   - [OrderID, BookingID, CustomerID, MenuID, Quantity, TotalCost]
3. Bookings - [BookingID, TableNo, CustomerID, BookingSlot, EmployeeID]         

### Task-1 
MySQL workbench was used to create the entity relationship model or ER diagram for the Little Lemon database system. The database that must conform to the 3 fundamental normal forms NF1, NF2, NF3. The forward engineering feature was then used to implement the Little Lemom database schema.  

![Little Lemon Data Model](LittleLemonDataModel/LittleLemonDM.png)

### Task-2 
