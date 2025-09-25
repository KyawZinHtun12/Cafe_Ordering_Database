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

---

## 🗄️ Database

**Name:** `Golden_Valley`

---

## 📝 Tables

### 1. Author

| Column    | Data Type   | Constraints    |
|-----------|-------------|----------------|
| AuthorID  | VARCHAR(8)  | PRIMARY KEY    |
| Name      | VARCHAR(60) | NOT NULL       |
| Phone     | VARCHAR(15) | NOT NULL       |
| Email     | VARCHAR(50) | NOT NULL       |

---

### 2. Category

| Column      | Data Type   | Constraints |
|-------------|-------------|-------------|
| CategoryID  | VARCHAR(8)  | PRIMARY KEY |
| Name        | VARCHAR(60) | NOT NULL    |
| Description | VARCHAR(70) | NOT NULL    |

---

### 3. Publisher

| Column   | Data Type    | Constraints |
|----------|--------------|-------------|
| PubID    | VARCHAR(8)   | PRIMARY KEY |
| Name     | VARCHAR(60)  | NOT NULL    |
| Contact  | VARCHAR(15)  | NOT NULL    |
| Location | VARCHAR(120) | NOT NULL    |

---

### 4. Customer

| Column   | Data Type    | Constraints |
|----------|--------------|-------------|
| CID      | VARCHAR(8)   | PRIMARY KEY |
| CName    | VARCHAR(60)  | NOT NULL    |
| PhoneNo  | VARCHAR(15)  | NOT NULL    |
| Location | VARCHAR(120) | NOT NULL    |

---

### 5. EmployeeType

| Column | Data Type     | Constraints |
|--------|---------------|-------------|
| ETID   | VARCHAR(8)    | PRIMARY KEY |
| Status | VARCHAR(30)   | NOT NULL    |
| Salary | DECIMAL(10,2) | NOT NULL    |

---

### 6. Employee

| Column   | Data Type    | Constraints |
|----------|--------------|-------------|
| EID      | VARCHAR(8)   | PRIMARY KEY |
| Name     | VARCHAR(60)  | NOT NULL    |
| Address  | VARCHAR(120) | NOT NULL    |
| HireDate | DATE         | NOT NULL    |
| ETID     | VARCHAR(8)   | FOREIGN KEY REFERENCES `EmployeeType(ETID)` NOT NULL |

---

### 7. Book

| Column        | Data Type     | Constraints |
|---------------|---------------|-------------|
| BookID        | VARCHAR(8)    | PRIMARY KEY |
| Name          | VARCHAR(60)   | NOT NULL    |
| ProductionDate| DATE          | NOT NULL    |
| Price         | DECIMAL(9,2)  | NOT NULL    |
| CategoryID    | VARCHAR(8)    | FOREIGN KEY REFERENCES `Category(CategoryID)` NOT NULL |
| PubID         | VARCHAR(8)    | FOREIGN KEY REFERENCES `Publisher(PubID)` NOT NULL |

---

### 8. Orders

| Column    | Data Type   | Constraints |
|-----------|-------------|-------------|
| OID       | VARCHAR(8)  | PRIMARY KEY |
| OrderDate | DATE        | NOT NULL    |
| CID       | VARCHAR(8)  | FOREIGN KEY REFERENCES `Customer(CID)` NOT NULL |
| EID       | VARCHAR(8)  | FOREIGN KEY REFERENCES `Employee(EID)` NOT NULL |

---

### 9. Author_Book (Bridge Table)

| Column   | Data Type   | Constraints |
|----------|-------------|-------------|
| BookID   | VARCHAR(8)  | FOREIGN KEY REFERENCES `Book(BookID)` NOT NULL |
| AuthorID | VARCHAR(8)  | FOREIGN KEY REFERENCES `Author(AuthorID)` NOT NULL |
| **Primary Key** (AuthorID, BookID) |

---

### 10. Order_Book (Bridge Table)

| Column   | Data Type    | Constraints |
|----------|--------------|-------------|
| OID      | VARCHAR(8)   | FOREIGN KEY REFERENCES `Orders(OID)` NOT NULL |
| Quantity | INT          | NOT NULL    |
| Total    | DECIMAL(9,2) | NOT NULL    |
| BookID   | VARCHAR(8)   | FOREIGN KEY REFERENCES `Book(BookID)` NOT NULL |
| **Primary Key** (OID, BookID) |

---

## 🔗 Relationships

- **Author_Book** = Many-to-Many between `Author` and `Book`
- **Order_Book** = Many-to-Many between `Orders` and `Book`
- `Employee` → `EmployeeType` = Many-to-One
- `Book` → `Category` = Many-to-One
- `Book` → `Publisher` = Many-to-One
- `Orders` → `Customer` = Many-to-One
- `Orders` → `Employee` = Many-to-One

---

## ⚙️ Notes

- All IDs are string-based keys (VARCHAR).
- Monetary values use `DECIMAL` for precision.
- Bridge tables enforce many-to-many relationships.


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
The data used in this SQL is not real and is for illustrative and educational purposes only. Any resemblance to actual persons, companies, or events is purely coincidental.

