-- Craete Database for Brew_Heaven
CREATE DATABASE Brew_Heaven;

-- Create Table for Category
CREATE TABLE  Category
(Category_ID	  Varchar	  (15)	  Not Null,
 Category_Name	  Varchar	  (50)	  Not Null,
 Description	  Varchar	  (150)	  Not Null,
 Primary Key (Category_ID));

-- Insert Values into Category Table values
INSERT INTO category Values
('Ct1001', 'Hot Drink', 'Hot beverages including coffee and tea'),
('Ct1002', 'Cold Drink', 'Chilled and refreshing beverages'),
('Ct1003', 'Smoothie', 'Blended fruit and vegetable drinks'),
('Ct1004', 'Pastry', 'Baked goods including breads and desserts');

-- Create Table For Employee
CREATE TABLE Employee
(Employee_ID	      Varchar	 (15)	  Not Null,
 Employee_Name	    Varchar	 (60)	  Not Null,
 Employee_Email	    Varchar	 (50)	  Not Null,
 Hire_Date          Date            Not Null,
 Primary Key (Employee_ID));


-- Insert Values Into Employee table
INSERT INTO employee VALUES
('E1001', 'Saw Su', 'sawsu@gmail.com', '2020-02-16'),
('E1002', 'Min That', 'minthat@gmail.com', '2020-02-16'),
('E1003', 'Win Hlaing', 'winhlaing@gmail.com', '2020-02-16'),
('E1004', 'Khant Moe', 'khantmoe@gmail.com', '2020-02-16'),
('E1005', 'Myat Aung', 'myataung@gmail.com', '2021-05-23'),
('E1006', 'Aung Kyaw', 'aungkyaw@gmail.com', '2021-05-23');


-- Create Table For Payment_Method
CREATE TABLE Payment_Method
(Payment_Method_ID	  Varchar	 (15)	 Not Null,
 Payment_Method_Name	Varchar	 (20)	 Not Null,
 Description          Varchar  (150) Not Null,
 Primary Key (Payment_Method_ID));


-- Insert Values Into Payment_Method Table
INSERT INTO Payment_Method VALUES
('P1001', 'KPZ Pay', 'Mobile payment solution for KPZ Bank'),
('P1002', 'Wave Pay', 'Mobile payment solution for Yoma Bank'),
('P1003', 'Cash On Delivery', 'Pay with cash upon delivery of the goods'),
('P1004', 'Credit Card', 'Pay using credit card');


-- Create Table For Membership
CREATE TABLE Membership
(Membership_ID	  Varchar	(15)	Not Null,
 Membership_Type	Varchar	(10)	Not Null,
 Discount	        Dec	    (4,2)	Not Null,
 Description	    Varchar	(100)	Not Null,
 Primary Key (Membership_ID));


-- Insert Values into Membership Table
INSERT INTO Membership VALUES
('Mb1001', 'Bronze', 5, 'Basic membership with minimal benefits'),
('Mb1002', 'Silver', 10, 'Standard membership with moderate benefits'),
('Mb1003', 'Gold', 15, 'Premium membership with additional benefits'),
('Mb1004', 'Diamond', 20, 'Elite membership with maximum benefits');

-- Create Table For Feedback
CREATE TABLE Feedback
(Feedback_ID	  Varchar	 (15)	Not Null,
 Feedback_Date	Date	 	      Not Null,
 Rating	        Int	       	  Not Null,
 Description    Varchar  (150)Not Null,
 Order_ID       Varchar  (15) Not Null,
 Primary Key (Feedback_ID)),
 Foreign Key (_ID) REFERENCES membership (Membership_ID));

 -- Insert values into feedback table
 INSERT INTO feedback Values
('F1001', '2024-02-12', 4, 'Good service', 'O1001'),
('F1002', '2024-02-13', 4, 'Nice atmosphere', 'O1002'),
('F1003', '2024-03-13', 3, 'Average experience', 'O1003'),
('F1004', '2024-03-24', 5, 'Excellent, highly recommend', 'O1004'),
('F1005', '2024-03-30', 2, 'Not satisfied with the quality', 'O1005'),
('F1006', '2024-04-10', 4, 'Good taste, but a bit expensive', 'O1006'),
('F1007', '2024-04-11', 1, 'Poor service, not coming again', 'O1007'),
('F1008', '2024-04-12', 2, 'Not up to the mark', 'O1008'),
('F1009', '2024-05-22', 5, 'Outstanding, loved everything', 'O1009'),
('F1010', '2024-05-26', 4, 'Very good, but can improve', 'O1010'),
('F1011', '2024-05-26', 3, 'Decent, but room for improvement', 'O1011'),
('F1012', '2024-05-29', 2, 'Disappointed with the service', 'O1012'),
('F1013', '2024-05-30', 2, 'Mediocre, expected better', 'O1013'),
('F1014', '2024-06-01', 5, 'Fantastic, exceeded expectations', 'O1014'),
('F1015', '2024-06-01', 5, 'Perfect, will return soon', 'O1015');

-- Create Table For Customer
CREATE TABLE Customer
(Customer_ID	      Varchar	 (15)	  Not Null,
 Customer_Name	    Varchar	 (60)	  Not Null,
 Customer_Phone	    Varchar	 (12)	  Not Null,
 Customer_Address	  Varchar	 (150)	Not Null,
 Membership_ID	    Varchar	 (15)	  Not Null,
 Primary Key (Customer_ID),
 Foreign Key (Membership_ID) REFERENCES membership (Membership_ID));

--  Insert valuse into customer table
INSERT INTO customer VALUES

('C1001', 'Soe Moe',   '09723589012', 'No. 27, Aung Zeya Street, Kamayut Township, Yangon', 'Mb1004'),
('C1002', 'Nwe Nwe',   '09250567860', 'Building 5, Room 8, Bogyoke Aung San Road, Lanmadaw Township, Yangon', 'Mb1003'),
('C1003', 'Sai Min',   '09987654356', 'No. 49, Cherry Street, Myitkyina Township, Kachin State', 'Mb1002'),
('C1004', 'Ye Htet',   '09712052578', 'Apartment 12, Shwe Hnin Si Housing, Pyay Road, Hlaing Township, Yangon', 'Mb1001'),
('C1005', 'Lin Khant', '09209876543', 'No. 14, Cherry Lane, Kalaw Township, Shan State', 'Mb1004'),
('C1006', 'Okkar',     '09991293344', 'No. 103, Yuzana Street, Aungmyaythazan Township, Mandalay', 'Mb1001'),
('C1007', 'Nay Win',   '09799897166', 'Building B, Room 305, Ocean Supercenter, Kabar Aye Pagoda Road, Bahan Township, Yangon', 'Mb1002'),
('C1008', 'Eaint pan', '09259660780', 'No. 33, Ayeyarwady Street, Nyaung U Township, Mandalay Region', 'Mb1001'),
('C1009', 'Nan Kyawt', '09933445566', 'House 21, Pyidaungsu Yeikmon, Mingaladon Township, Yangon', 'Mb1002'),
('C1010', 'Chan Myae', '09765004433', 'No. 78, Myoma Kyaung Street, Taunggyi Township, Shan State', 'Mb1003');

-- Create Table For Menu
CREATE TABLE Menu
(Menu_ID	    Varchar	 (15)	  Not Null,
 Menu_Name	  Varchar	 (50)	  Not Null,
 Menu_Price	  Dec	     (9,2)	Not Null,
 Category_ID	Varchar	 (15)	  Not Null,
 Primary Key (Menu_ID),
 Foreign Key (Category_ID) REFERENCES category(Category_ID));

-- Insert valuse into menu table
INSERT INTO Menu VALUES
('M1001', 'Chocolate Latte'     , '3500.00', 'Ct1001'),
('M1002', 'Cappuccino'          , '5000.00', 'Ct1001'),
('M1003', 'Mocha'               , '4500.00', 'Ct1001'),
('M1004', 'Passion Lemon Tea'   , '3000.00', 'Ct1002'),
('M1005', 'Thai Tea'            , '3000.00', 'Ct1002'),
('M1006', 'Mango Smoothie'      , '5000.00', 'Ct1003'),
('M1007', 'Strawberry Smoothie' , '5000.00', 'Ct1003'),
('M1008', 'Pork Floss'          , '4000.00', 'Ct1004'),
('M1009', 'Butter Sugar Loaf'   , '4500.00', 'Ct1004'),
('M1010', 'Curry Naan'          , '3500.00', 'Ct1004'),
('M1011', 'Curry Chicken Bread' , '4000.00', 'Ct1004'),
('M1012', 'Moshi Mushroom Bread', '4500.00', 'Ct1004');


-- Create Table For Order_
CREATE TABLE Order_
(Order_ID	          Varchar	 (15)	 Not Null,
 Order_Date	        Date	 	       Not Null,
 Customer_ID	      Varchar	 (12)	 Not Null,
 Employee_ID	      Varchar	 (12)	 Not Null,
 Payment_Method_ID	Varchar	 (15)	 Not Null,
 Primary Key (Order_ID),
 Foreign Key (Customer_ID)       REFERENCES customer(Customer_ID),
 Foreign Key (Employee_ID)       REFERENCES employee(Employee_ID),
 Foreign Key (Payment_Method_ID) REFERENCES payment_method(Payment_Method_ID));


-- Insert Values Into Order Table
INSERT INTO Order_ VALUES
('O1001', '2024-02-12', 'C1001', 'E1001', 'P1001'),
('O1002', '2024-02-12', 'C1002', 'E1002', 'P1003'),
('O1003', '2024-02-12', 'C1002', 'E1002', 'P1002'),
('O1004', '2024-03-24', 'C1003', 'E1003', 'P1003'),
('O1005', '2024-03-30', 'C1004', 'E1004', 'P1004'),
('O1006', '2024-04-09', 'C1005', 'E1001', 'P1003'),
('O1007', '2024-04-11', 'C1001', 'E1005', 'P1004'),
('O1008', '2024-04-11', 'C1006', 'E1004', 'P1002'),
('O1009', '2024-05-21', 'C1007', 'E1003', 'P1003'),
('O1010', '2024-05-25', 'C1003', 'E1002', 'P1002'),
('O1011', '2024-05-25', 'C1008', 'E1005', 'P1001'),
('O1012', '2024-05-29', 'C1009', 'E1005', 'P1002'),
('O1013', '2024-05-29', 'C1001', 'E1001', 'P1001'),
('O1014', '2024-05-30', 'C1010', 'E1006', 'P1001'),
('O1015', '2024-05-31', 'C1007', 'E1002', 'P1004');




-- Create Table For Delivery
CREATE TABLE Delivery
(Delivery_ID      Varchar    (15)    Not Null,
 Delivery_Address Varchar   (100)   Not Null,
 Delivery_Date    Date               Not Null,  
 Delivery_Fee      Dec        (9,2)    Not Null,  
 Order_ID          Varchar    (12)    Not Null,
 Primary Key (Delivery_ID),
 Foreign Key (Order_ID) REFERENCES order_(Order_ID));

-- Insert values into delivery table
INSERT INTO Delivery Values
('D1001', 'No.105,28th street,Pabedan Township','2024-02-12', '3000.00', 'O1001'),
('D1002', 'No.2A, Pyae Sone Chan Thar Condo,Hlaing','2024-02-13', '2000.00', 'O1002'),
('D1003', 'No.133, 45th street, Botahtaung Township','2024-03-13', '3500.00', 'O1003'),
('D1004', 'N0.33B, Latha street,Latha Township','2024-03-24', '3000.00', 'O1004'),
('D1005', 'N0.199,Lanmadaw street,Lanmadaw Township','2024-03-30', '2500.00', 'O1005'),
('D1006', 'No. 14, Cherry Lane, Kalaw Township, Shan State','2024-04-10', '4000.00', 'O1006'),
('D1007', 'No. 33, Ayeyarwady Street, Nyaung U Township, Mandalay Region','2024-04-11', '3000.00', 'O1007'),
('D1008', 'No. 27, Aung Zeya Street, Kamayut Township, Yangon','2024-04-12', '2500.00', 'O1008'),
('D1009', 'No.11,29th street, Yankin Township','2024-05-22', '3000.00', 'O1009'),
('D1010', 'House 21, Pyidaungsu Yeikmon, Mingaladon Township, Yangon','2024-05-26', '3500.00', 'O1010'),
('D1011', 'Apartment 12, Shwe Hnin Si Housing, Pyay Road, Hlaing Township, Yangon','2024-05-26', '2000.00', 'O1011'),
('D1012', 'No.105,28th street,Pabedan Township','2024-05-29', '3000.00', 'O1012'),
('D1013', 'No.2A, Pyae Sone Chan Thar Condo,Hlaing','2024-05-30', '2000.00', 'O1013'),
('D1014', 'N0.33B, Latha street,Latha Township','2024-06-01', '3500.00', 'O1014'),
('D1015', 'N0.199,Lanmadaw street,Lanmadaw Township','2024-06-01', '2500.00', 'O1015');

-- Create Table For Order_Menu
CREATE TABLE Order_Menu
(	Order_ID	Varchar	 (15)	Not Null,
  Menu_ID	  Varchar	 (15)	Not Null,
  Qty	      Int	 	        Not Null,
 Primary Key (Menu_ID,Order_ID),
 Foreign Key (Menu_ID)  REFERENCES menu(Menu_ID),
 Foreign Key (Order_ID) REFERENCES order_(Order_ID));

-- Insert valuse into order_Menu Table
INSERT INTO Order_Menu Values

('O1001', 'M1001', 3),
('O1001', 'M1006', 2),
('O1002', 'M1002', 3),
('O1003', 'M1001', 1),
('O1003', 'M1003', 4),
('O1004', 'M1004', 2),
('O1004', 'M1002', 2),
('O1005', 'M1005', 1),
('O1006', 'M1001', 3),
('O1006', 'M1004', 1),
('O1006', 'M1006', 4),
('O1006', 'M1007', 2),
('O1007', 'M1001', 2),
('O1007', 'M1004', 3),
('O1008', 'M1008', 2),
('O1009', 'M1004', 3),
('O1009', 'M1009', 1),
('O1010', 'M1009', 4),
('O1011', 'M1012', 1),
('O1012', 'M1003', 3),
('O1012', 'M1008', 3),
('O1013', 'M1010', 1),
('O1014', 'M1006', 2),
('O1014', 'M1005', 4),
('O1014', 'M1011', 2),
('O1015', 'M1001', 3);

SELECT * FROM order_menu;












-- 1. Select the Best Top 5 menu along with Category

SELECT   m.Menu_ID,m.Menu_Name as 'Best Top 5 Menu',ct.Category_Name,Count(om.Menu_ID) as 'Qty'
FROM     order_ o, order_menu om , menu m, category ct
WHERE    o.Order_ID=om.Order_ID
AND      om.Menu_ID=m.Menu_ID
And      m.Category_ID=ct.Category_ID
Group By m.Menu_Name,ct.Category_Name
Order By Count(om.Menu_ID) Desc
Limit    5;
 	      


-- 2. Retrieve the total quantity of each menu item ordered, grouped by menu name and category which is above 5.

SELECT   m.Menu_Name,c.Category_Name, Sum(om.Qty) AS 'Total Quantity'
FROM     order_ o, order_menu om, menu m, category c
WHERE    o.Order_ID=om.Order_ID
AND      om.Menu_ID=m.Menu_ID
AND      m.Category_ID=c.Category_ID
Group By m.Menu_Name,c.Category_Name
Having   Sum(om.Qty) >5;


-- 3.Select the employees who handled the most order more than 3 times.
SELECT   e.Employee_ID, e.Employee_Name, count(o.Order_ID) as 'Total Order'
FROM     employee e, order_ o,order_menu om
Where    e.Employee_ID=o.Employee_ID
AND      o.Order_ID=om.Order_ID
Group By e.Employee_Name
Having   count(o.Order_ID) > 3
Order By count(o.Order_ID) Desc
Limit    3;

-- 4.select the customer who orderes the most expensive menu.

SELECT  c.Customer_ID,c.Customer_Name,mb.Membership_Type,m.Menu_ID,o.Order_ID,m.Menu_Name,m.Menu_Price
FROM    menu m,order_menu om,order_ o,customer c,membership mb
WHERE   m.Menu_ID=om.Menu_ID
AND     om.Order_ID=o.Order_ID
AND     c.Customer_ID=o.Customer_ID
AND     c.Membership_ID=mb.Membership_ID
AND     m.Menu_Price=(SELECT  MAX(Menu_Price) FROM menu);

-- 5.Select the average rating from the menu 'Chocolate Latte'.

Select   m.Menu_ID,m.Menu_Name,  Avg(f.Rating) as 'Average Rating'
From     feedback f, order_ o, order_menu om, menu m
Where    f.Order_ID=o.Order_ID
And      o.Order_ID=om.Order_ID
And      om.Menu_ID=m.Menu_ID
And      m.Menu_Name='Chocolate Latte'
Group By m.Menu_Name;


-- 6.Select the lesat payment method for all orders.
SELECT   pm.Payment_Method_ID, pm.Payment_Method_Name, Count(o.Order_ID) as 'Usage'
FROM     order_ o,payment_method pm
Where    o.Payment_Method_ID=pm.Payment_Method_ID
Group By pm.Payment_Method_ID
Having   Count(o.Order_ID)<4;


-- 7.select the customer who orderes the least expensive menu.
SELECT  c.Customer_ID,c.Customer_Name,mb.Membership_Type,m.Menu_ID,o.Order_ID,m.Menu_Name,m.Menu_Price
FROM    menu m,order_menu om,order_ o,customer c,membership mb
WHERE   m.Menu_ID=om.Menu_ID
AND     om.Order_ID=o.Order_ID
AND     c.Customer_ID=o.Customer_ID
AND     c.Membership_ID=mb.Membership_ID
AND     m.Menu_Price=(SELECT  MIN(Menu_Price) FROM menu);


-- 8.Select all the delivery who ordered the customer 'Nwe Nwe'.

Select   c.Customer_ID,c.Customer_Name,o.Order_ID,o.Order_Date,d.Delivery_Address,d.Delivery_Fee
From     delivery d,order_ o,customer c
Where    d.Order_ID=o.Order_ID
AND      o.Customer_ID=c.Customer_ID
AND      c.Customer_Name='Nwe Nwe';


-- 9.Select the customer who rated below 2 along with membership.

SELECT   c.Customer_ID,c.Customer_Name,ms.Membership_Type,o.Order_ID,f.Rating
FROM     customer c,membership ms, order_ o, feedback f
WHERE    c.Membership_ID=ms.Membership_ID
And      c.Customer_ID=o.Customer_ID
AND      o.Order_ID=f.Order_ID
Having   f.Rating <= 2
Order By f.Rating desc;


-- 10.Select the employees who handled less than 2 order.
SELECT   e.Employee_ID, e.Employee_Name, count(o.Order_ID) as 'Total Order'
FROM     employee e, order_ o,order_menu om
Where    e.Employee_ID=o.Employee_ID
AND      o.Order_ID=om.Order_ID
Group By e.Employee_Name
Having   count(o.Order_ID) <= 2
Order By count(o.Order_ID) Desc;







