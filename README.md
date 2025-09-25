# Brew Heaven Database

A complete SQL database schema and sample data for Brew Heaven – a café and beverage shop. This project demonstrates a relational database design with multiple entities such as menu, orders, employees, customers, delivery, payments, and feedback. It also includes example queries for analytics and reporting.

## 📋 Features

Normalized schema covering:

Categories of items (hot drink, cold drink, smoothies, pastries)

Menu items and prices

Employees and customer membership details

Orders, delivery, and payment methods

Feedback and ratings

Sample data inserted for each table for immediate testing.

10 example queries for insights such as:

Top-selling menu items

Total quantity ordered per category

Employees handling the most/least orders

Customers who ordered most/least expensive menu items

Average ratings

Payment method usage

Delivery details per customer

## 🗄️ Database Schema
Table	Description
Category	Categories of menu items (Hot Drink, Cold Drink, Smoothie, Pastry).
Menu	Individual menu items, price, and category.
Employee	Employee records with hire date.
Payment_Method	Payment types like KPZ Pay, Wave Pay, Credit Card, etc.
Membership	Membership tiers with discounts.
Customer	Customers linked to membership.
Order_	Orders placed by customers, linked to employees and payment method.
Order_Menu	Junction table for orders and menu items with quantity.
Delivery	Delivery details linked to orders.
Feedback	Feedback linked to orders and ratings.

## ⚙️ Usage

- Create the Database
CREATE DATABASE Brew_Heaven;

- Run the Script
Execute the SQL script provided in this repository (schema + inserts + queries) in your SQL environment (MySQL, MariaDB, or compatible RDBMS).

- Test the Queries
Run the example queries to analyze the data.

## 📊 Sample Output

Some example query outputs you’ll get:

Top 5 menu items with category

Total quantity ordered by menu name

Customers with low ratings and their membership tier

Average rating of Chocolate Latte

Employees handling the most orders

## ⚠️ Disclaimer
The data used in this Power BI dashboard is not real and is for illustrative and educational purposes only. Any resemblance to actual persons, companies, or events is purely coincidental.

