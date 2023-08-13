# Little Lemon Database Capstone Project

## Introduction
This project is helps Little Lemon build and management. To accomplish this, the following tasks were performed:

### Choosing the right Data Model
After comparing various data models, the entity relationship model is the best fit for Little Lemon data requirments.This model present each table as an entity with a set of attribules in a ER diagram. Based on Little Lemon business structure, the following entitities and attributes were identified. 

#### Little Lemon Entities with Attributes 
1. Customer - [CustomerID, FirstName, LastName, Email, PhoneNumber]
2. Orders   - [OrderID, BookingID, CustomerID, MenuID, Quantity, TotalCost]
3. Bookings - [BookingID, TableNo, CustomerID, BookingSlot, EmployeeID]
4. Menu - [MenuID, ItemID, Name, MenuType]
5. MenuItem - [ItemID, Name, Type, Price]
6. Employee - [EmployeeID, FirstName, LastName, Role, Salary]         

### Task-1 
MySQL workbench was used to create the entity relationship model or ER diagram for the Little Lemon database management system. The diagram show a one-to-many relationship between entities. The database also conforms to the 3 fundamental normal forms 1NF, 2NF and 3NF. The forward engineering feature was then used to implement the Little Lemom database schema.  

![Little Lemon Data Model](LittleLemonDataModel/LittleLemonDM.png)

### Task-2 
