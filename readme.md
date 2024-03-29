# Little Lemon Database Capstone Project

## Introduction
The purpose of this project is to build a database management system or DBMS for the Little Lemon restaurant. The database system will store information on Little Lemon's customers, orders, bookings, menus and employees. The steps involve in building the Little Lemon DBMS are as follows:

1. Choosing a data model that best fits Little Lemon business structure
2. Creating an entity relationship diagram (ERD) model in MYSQL workbench
3. Creating the database schema by implementing the ER model in MYSQL server 

Once the database is created and populated with the data, the following tasks will be performed: 

1. Create profits & sales reports for the Little Lemon management team
2. Build a booking system for Little Lemon customers
3. Generate data insight using data anayltics with Tableau
4. Create a database client using Python

## Task-1 Build Little Lemon Database Management System
### 1. Choosing the right Data Model
After comparing various data models, the entity relationship model is the best fit for Little Lemon data requirments.This model present each table as an entity with a set of attribules in a ER diagram. Based on Little Lemon business structure, the following entitities and attributes were identified. 

#### Little Lemon Entities with related attributes 
1. Customer - [CustomerID, FirstName, LastName, Email, PhoneNumber]
2. Orders   - [OrderID, BookingID, CustomerID, MenuID, Quantity, TotalCost]
3. Bookings - [BookingID, TableNo, CustomerID, BookingSlot, EmployeeID]
4. Menu - [MenuID, ItemID, Name, MenuType]
5. MenuItem - [ItemID, Name, Type, Price]
6. Employee - [EmployeeID, FirstName, LastName, Role, Salary]         

### 2.Creating the ER-Diagram in MySQL workbench 
MySQL workbench was used to create a normalized entity relationship model or ER diagram for the Little Lemon database management system. The diagram show all entities or tables along with their related attributes, constraints, primary keys and secondary keys.The diagram show a one-to-many relationship between entities. Finally the diagram also show that the database adheres to the 3 fundamental normal forms 1NF, 2NF and 3NF. 

![Little Lemon Data Model](LittleLemonDataModel/LittleLemonDM.png)

### 3. Implementing the Little Lemon database Schema
The final step in the DBMS process is to create the database schema. This is accomplish by using the MySQL workbench forward engineering feature. The MySQL forward engineering feature implements the Little Lemom database model into the MySQL server as shown below.   
![LittleLemon Database Schema](LittleLemon_Stored_Procedures/LittleLemon_database_Schema.png)


## Task-2 Create reports from Little Lemon database
With the Little Lemon database management system built and populated with data,we will create some report from the data. We will create a virtual table from the orders table, query multiple tables and join them using SQL join clauses and finally summerize the the menu table using SQL subqueries. 

### 1. Create Virtual Table to summarize data
The image below is a virtual table called OrdersView that focuses on OrderID, Quantity and Cost columns from the Orders table. The query was performed for all orders with a quantity greater than 2. 

#### SQL Statement:
![OrderView](LittleLemon_Stored_Procedures/LittleLemon_OrderView.png)


#### Query Result:
![OrderView](LittleLemon_OrderView_VirtualTableQuery_results.png)


### 2. Query multiple tables using Join clauses 
The join query statement below collected information from four tables on all customers with orders that cost more than $150. 

![Join Query](LittleLemon_Stored_Procedures/LittleLemon_JoinQuery_statement.png)


### 3. Data summarization using Subquery statement 

Little Lemon need to find all menu items for which more than 2 orders have been placed. You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2. This was accomplish using the following SQL statement. 

![LittleLemon_SubQuery](LittleLemonSubQueries/LittleLemon_Subquery_DataSummerization_results.png)

## Task-3 Create optimized queries to manage and analyze data
To help Little Lemon manage their data efficiently,  we will create some optimized queries using stored procedures and prepared statements. 
Optimized queries increases the database overall efficiency by reducing the number of steps needed to query data.  
### 1. Stored Procedure- GetMaxQuantity
The first optimized query is a stored procedure call GetMaxQuantity.This procedure helps Little Lemon quickly view the maximum quantity from the Orders table by simply calling the procedure name as shown below. 

#### SQL Statement:
![GetMaxQuantitySQL](LittleLemon_Stored_Procedures/LittleLemon_GetMaxQuantity_SQL.png)

#### Query Result:
![GetMaxQuantity](LittleLemon_Stored_Procedures/LittleLemon_GetMaxQuantity_StoredProcedure_results.png)


### 2. Prepared Statement- GetOrderDetail

The second optimized query is a prepared statement called GetOrderDetail. This prepared statement will help to reduce the parsing time of queries. It will also help to secure the database from SQL injections. GetOrderDetail accepts one input argument the customerID and returns the orderID, Quantity and orderCost from the Orders table

#### SQL Statement:
![GetOrderDetail SQL](LittleLemon_Stored_Procedures/LittleLemon_GetOrderDetail_SQL.png)

#### Query Result:

![GetOrderDetail](LittleLemon_Prepared_Statements/LittleLemon_GetOrderDetail_PreparedStatement_results.png)


### 3. Stored Procedure- CancelOrder

The third and final optimized query is a stored procedure called CancelOrder. Little Lemon want to use this stored procedure to delete an order record based on the user input of the order id.
Creating this procedure will allow Little Lemon to cancel any order by specifying the order id value in the procedure parameter without typing the entire SQL delete statement.  

#### SQL Statement:
![CancelOrder SQL](LittleLemon_Stored_Procedures/LittleLemon_CancelOrder_SQL.png)


#### Query Result:
![CancelOrder](LittleLemon_Stored_Procedures/LittleLemon_CancelOrder_StoredProcedure_results.png)

## Task-4 Create SQL queries to check available bookings based on user input
In this section we will focus on Little Lemon's bookings table.First we will populate the bookings table then create optimized queries 
that will check available bookings based on table numbers and add a valid booking if a table is availabe.  

### 1. Populate the Booking Table

Little Lemon wants to populate the Bookings table of their database with some records of data.

![Booking Table](LittleLemon_Stored_Procedures/LittleLemon_Booking_Table.png)

### 2. Stored Procedure- CheckBooking

For your second task, Little Lemon need you to create a stored procedure called CheckBooking to check whether a table in the restaurant is already booked. Creating this procedure helps to minimize the effort involved in repeatedly coding the same SQL statements.The procedure should have two input parameters in the form of booking date and table number. You can also create a variable in the procedure to check the status of each table.

#### SQL Statement:
![CheckBooking SQL](LittleLemon_Stored_Procedures/LittleLemon_CheckBooking_SQL.png)

#### Query Result:
![CheckBooking Result](LittleLemon_Stored_Procedures/LittleLemon_CheckBooking_Result.png)


### 3. Stored Procedure - AddValidBooking

For your third and final task, Little Lemon need to verify a booking, and decline any reservations for tables that are already booked under another name. 
Since integrity is not optional, Little Lemon need to ensure that every booking attempt includes these verification and decline steps. However, implementing these steps requires a stored procedure and a transaction. 
To implement these steps, you need to create a new procedure called AddValidBooking. This procedure must use a transaction statement to perform a rollback if a customer reserves a table that’s already booked under another name.
#### SQL Statement:
![AddValidBooking](LittleLemon_Stored_Procedures/LittleLemon_AddValidBooking_SQL.png)

#### Query Result:
![AddValidBooking](LittleLemon_Stored_Procedures/LittleLemon_AddValidBooking_Result.png)

## Task-5 Create SQL queries to add and update bookings

### 1. Stored Procedure - AddBooking
In this first task you need to create a new procedure called AddBooking to add a new table booking record.

#### SQL Statement:
![AddBooking](LittleLemon_Stored_Procedures/LittleLemon_Addbooking_SQL.png)

#### Query Result:
![AddBooking Result](LittleLemon_Stored_Procedures/LittleLemon_AddBooking_Result.png)

### 2. Stored Procedure - UpdateBooking
For your second task, Little Lemon need you to create a new procedure called UpdateBooking that they can use to update existing bookings in the booking table.
The procedure should have two input parameters in the form of booking id and booking date. You must also include an UPDATE statement inside the procedure. 

#### SQL Statement:
![UpdateBooking SQL](LittleLemon_Stored_Procedures/LittleLemon_UpdateBooking_SQL.png)

#### Query Result:
![UpdateBooking Result](LittleLemon_Stored_Procedures/LittleLemon_UpdateBooking_Result.png)


### 3. Stored Procedure - CancelBooking
For the third and final task, Little Lemon need you to create a new procedure called CancelBooking that they can use to cancel or remove a booking.
The procedure should have one input parameter in the form of booking id. You must also write a DELETE statement inside the procedure. 

#### SQL Statement:
![CancelBooking SQL](LittleLemon_Stored_Procedures/LittleLemon_CancelBooking_SQL.png)

#### Query Result:
![CancelBooking Result](LittleLemon_Stored_Procedures/LittleLemon_CancelBooking_Result.png)


## Task-6 Little Lemon Sales and Profit Analysis with Tableau 

### 1. Barchart of Customer Sales 

In the first task, you need to create a bar chart that shows customers sales and filter data based on sales with at least $70.

![LittleLemon_CustomerSales](LittleLemon_Tableau_DataAnalysis/LittleLemon_BarChart2.png)

### 2. LineChart of Sales Trend 2019 to 2022 

In the second task, you need to create a line chart to show the sales trend from 2019 to 2022. 

![LittleLemon_LineChart](LittleLemon_Tableau_DataAnalysis/LittleLemon_LineChart.png)


### 3. BubbleChart of Sales for all customers 

In the third task, you need to create a Bubble chart of sales for all customers. The chart should show the names of all customers.

![LittleLemon_BubbleChart](LittleLemon_Tableau_DataAnalysis/Little_Lemon_Sales_BubbleChart.png)


### 4. BarChart of Sales for Turkish Italian and Greek cuisines

In this task, you need to compare the sales of the three different cuisines sold at Little Lemon. Create a Bar chart that shows the sales of the Turkish, Italian and Greek cuisines.You need to display sales data for 2020, 2021, and 2022 only. Each bar should display the profit of each cuisine. 

![LittleLemon_BarChart of cuisine sales](LittleLemon_Tableau_DataAnalysis/LittleLemon_Barchart.png)

### 5. Little Lemon Interactive Dashboard

In this final task, you need to create an interactive dashboard that combines the Bar chart called Customers sales and the Sales Bubble Chart

![LittleLemon_interactive Dashboard](LittleLemon_Tableau_DataAnalysis/LittleLemon_interactivedashboard.png)


## Task-7 Little Lemon Database Client Setup

Finally I will help Little Lemon setup a database client to connect to the  MySQL server. Little Lemon needs you to help them to build a Booking System so that their guests can book tables with the restaurant. To complete this task, you need to create a folder and then open a command prompt at that location. Next, to start writing code to create the booking system, you first need to ensure that you have Python installed, a working IDE and configured a driver that you can use to interact with your database.
