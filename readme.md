# Little Lemon Database Capstone Project

## Introduction
This project is helps Little Lemon build and management. To accomplish this, the following tasks were performed:

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
MySQL workbench was used to create a normalized entity relationship model or ER diagram for the Little Lemon database management system. The diagram show all entities or tables along with their related attributes, constraints, primary keys and secondary keys.The diagram show a one-to-many relationship between entities. Finally diagram also show that the database adheres to the 3 fundamental normal forms 1NF, 2NF and 3NF. 

![Little Lemon Data Model](LittleLemonDataModel/LittleLemonDM.png)

### 3. Implementing the Little Lemon database Schema
The MySQL workbench forward engineering feature was then used to implement the Little Lemom database model into the MySQL server. schema.  
## Task-2 Create Sales Report from Little Lemon data

### 1. Create Virtual Table to summarize data
The image below is a virtual table called OrdersView that focuses on OrderID, Quantity and Cost columns within the Orders table for all orders with a quantity greater than 2. 

![OrderView](LittleLemon_OrderView_VirtualTableQuery_results.png)


### 2. Join query statement for multiple tables 
The query statement below collect information from four tables on all customers with orders that cost more than $150. Extract the required information from each of the following tables by using the relevant JOIN clause: 
[Little Lemon Join Query SQL Statment](LittleLemon_Join_Tables_Queries/LittleLemon_JoinQuery_DataSummarization.sql)

![Join Query](LittleLemon_Join_Tables_Queries/LittleLemon_JoinTableQuery_DataSummerization_results.png)


### 3. Data summarization using Subquery statement 

Little Lemon need to find all menu items for which more than 2 orders have been placed. You can carry out this task by creating a subquery that lists the menu names from the menus table for any order quantity with more than 2. This was accomplish using the following SQL statement. 

![LittleLemon_SubQuery](LittleLemonSubQueries/LittleLemon_Subquery_DataSummerization_results.png)


## Task-3 Create Interactive Dashboard for Sales and Profit

### 1. Barchart of Customer Sales 

In the first task, you need to create a bar chart that shows customers sales and filter data based on sales with at least $70.

![LittleLemon_CustomerSales](LittleLemon_Tableau_DataAnalysis/LittleLemon_BarChart2.png)

### 2. LineChart of Sales Trend 2019 to 2022 

In the second task, you need to create a line chart to show the sales trend from 2019 to 2022. 

![LittleLemon_CustomerSales](LittleLemon_Tableau_DataAnalysis/LittleLemon_BarChart2.png)

