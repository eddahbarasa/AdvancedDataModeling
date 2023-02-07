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

