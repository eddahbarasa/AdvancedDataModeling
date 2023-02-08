# AdvancedDataModeling

## Mission 1: Design a database model for M&G

Objective: Design a simplified logical relational database model for Mangata and Gallo.

Mangata and Gallo (M&G) has built an ad hoc database system to store data about their customers, products, orders and delivery status in one large table with the columns listed below:
*	Client name
*	Client address
*	Order Date
*	Delivery Status
*	Delivery Date
*	Contact Number
*	Email
*	Item name
*	Item price
*	Total cost

This database is difficult to manage and includes loads of redundant data. Create a proper database model for a simplified and logical relational database.
The database modelling tool I used was draw.io.
#### Task 1: Create a conceptual model

Create a conceptual model to support M&G’s online ordering system. The model should consider the entities listed in the M&G big table. 

![Conceptual diagram for M G database drawio](https://user-images.githubusercontent.com/106580846/217201258-6a9e028a-c930-43d8-b2ab-9659046a2297.png)

#### Task 2: Create a logical ER diagram
Based on the conceptual model developed, create a logical ER diagram as following:
*	Translate each entity in the conceptual diagram into a table with relevant attributes 
*	Specify the primary key of each table.
*	Create a multiplicity relationship between the tables.
*	Define relevant constraints such as NOT NULL and foreign keys.
*	Review the logical ER diagram, and make sure that your data model conforms to the first normal form by applying the data atomicity rule. Some clients could have multiple delivery addresses, to apply data atomicity create an Address table and relate it to the delivery table 

![Logical ER diagram for M G drawio](https://user-images.githubusercontent.com/106580846/217202101-edff0f68-e871-4dbb-bd5c-4dfee69d5969.png)

## Mission 2: Design a database model in MySQL Workbench
Mangata & Gallo (M&G) jewelry store wants to make use of the logical database model outlined in the diagram below. Develop this model using MySQL Workbench and implementing it in your MySQL server.

![image](https://user-images.githubusercontent.com/106580846/217250134-d76a42cd-541d-49ab-a980-58af37b7dbd5.png)

#### Task 1: Create an ER diagram
Using the visual data modeling tool in MySQL Workbench to create the proposed ER diagram for M&G. 

![er diagram mysql bench](https://user-images.githubusercontent.com/106580846/217263905-83092f58-253b-4d71-8a8c-30316ae74759.png)

**NOTE: Do not use "&" (or any symblol) when naming a database like I did, running a query with it is dramaaa**

## Task 2: Implement the internal schema
Use MySQL Workbench’s forward engineer feature to implement the internal schema in your MySQL server.

It then should be able to appear the schema list in the navigator section.

![schema list](https://user-images.githubusercontent.com/106580846/217271843-d44ec408-23b0-4a20-9375-d18f65a65bdf.png)

#### Task 3: Populate the M&G database & create view
Populate the M&G database with data provided using the SQL Workbench editor. 

Use the INSERT statements.

![insert code](https://user-images.githubusercontent.com/106580846/217471138-fa70aa70-9c91-4bd9-9015-a19190644880.png)

Create a virtual table to easily find information on orders. This information must contain data from all tables including:
*	Clients
*	Orders 
*	Products 
*	Delivery 
* Address

![create view](https://user-images.githubusercontent.com/106580846/217477479-d096934d-11d1-44ae-81db-7b343857ecff.png)

The output will be ..........

![view](https://user-images.githubusercontent.com/106580846/217477708-2949cda4-2dfe-43a1-b830-6b4d9841b4d7.png)

## Mission 3: Create a dimensional data model

Create a dimensional model for Global Super Store to help them make sense of their sales and profits.
Global Super Store have experienced a decline in their profits in the last few years.There are several factors that impacted their profits including:
*	Global instability around shipping and product costs.
*	New competitors appearing in different markets around the world.
*	Out of date products.
*	Emerging new technologies.
*	The development of new products. 

Global Super Store needs to understand how these factors are affecting their sales and profits. They need to compare data amongst different customers, products, times and locations to understand the problem. 
 
#### Task 1: Identify key information
Identifying the business process you want to deal with in this case it is the sales process. Identify the grain, the dimensions and the measures to be used to build the dimensional model. 

**Levels of granularity:**
* Region, country and city
*	Year, quarter, month, day or event levels
*	Category, subcategory and items

**The dimensions:** 
*	Location
*	Time
*	Product
*	Customers

**The facts:**
*	The buy and sale prices of all products
*	The quantity sold of each product
*	The shipping cost of each product 

#### Task 2: Create a star schema

Create a Star Schema based on the dimensions and facts identified in task 1. 
Create the dimensions and the fact tables including relevant attributes and data types in each table.
Define the primary and the foreign keys in the data model.

![stars chema](https://user-images.githubusercontent.com/106580846/217501000-7ff21e75-0704-422a-ab2a-b376c2f098c2.png)

#### Task 3: Create a snowflake schema

Extend the Star Schema developed in task 2 by creating a suitable Snowflake Schema with a particular focus on the products dimension.

![snow flake schema](https://user-images.githubusercontent.com/106580846/217504694-a4e1db66-88c8-4568-a1dc-f67e8cf83fab.png)

## Mission 4:  Data analysis in Tableau
The Global Super Store dataset includes more than 51000 records of data about customers, orders and products in  MS Excel file. We now need to analyze this data to understand their business activities and maximize their profits.

The tasks are completed in **Tableau**.

#### Task 1: Prepare the data set for analysis
Connect to the Global Super Store data set.

![b4](https://user-images.githubusercontent.com/106580846/217525879-d88cacbd-ce09-41dc-a4f3-69d2735828cf.png)

Prepare it for data analysis by making sure that all fields like the Order date and the Ship date contain the correct data types.

Create a new calculated field called Warranty based on 90 days from the order date.

![after](https://user-images.githubusercontent.com/106580846/217526124-05f70306-a208-47ce-a3b5-6714f6763e4d.png)

#### Task 2: Create a map chart

Global Super Store want to investigate their business performance in Africa. Create a map chart that shows sales in different countries in Africa. The map should show the sales in proportional sizes. If you rollover a country, you should be able to see:
*	Country name,
*	Quantity sold
*	Sales figures 

![tableau 1](https://user-images.githubusercontent.com/106580846/217529081-09bd7c33-2753-42c4-b1bf-ef7acbc549a3.png)

**Here is a link to the worksheet on Tableau Public** https://public.tableau.com/views/GlobalSuperStoreSalesinAfrica/Sheet1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

#### Task 3: Create a bar chart
Global Super Store want to check the profits made in each country in Africa. However, they are only interested in data from countries where they have made at least $500 in profit. 

Create a bar chart in Tableau called Profits in Africa. When you rollover a bar, you should be able to see 
*	Name of the country,
*	Profits 
*	Shipping cost

![bar chart](https://user-images.githubusercontent.com/106580846/217535706-9dff422d-7952-46e5-a367-9e294c68d842.png)

**Here is a link to the worksheet on Tableau Public** https://public.tableau.com/views/GlobalSuperStoreProfitsinAfrica/ProfitsinAfrica?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

#### Step 4: Create a dashboard
Develop a dashboard that includes the two visualizations created: Sales in Africa map  and the profits in Africa bar chart

![dash 2](https://user-images.githubusercontent.com/106580846/217538087-82480140-7673-48a6-bdf3-8457ae6b0da6.png)

Make the dashboard interactive so that when you click on a specific country in the map the information related to that country will be displayed in the bar chart.

![dash 1](https://user-images.githubusercontent.com/106580846/217538140-fbe0bca0-852d-4e86-a39c-7e1eae5e40c0.png)

**Here is a link to the dashboard on Tableau Public** https://public.tableau.com/views/GlobalSuperStoreSalesProfitsDashboard/AfricaSalesProfitDashboard?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

