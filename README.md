# Discovering Databases: An Easy Start for Beginners

> **Project Duration:** December 8, 2025 - December 15, 2025  
> **Weight:** 1

## Overview

Welcome to "Discovering Databases: An Easy Start for Beginners." This project introduces foundational concepts and practical skills for working with databases effectively. Through hands-on tasks, you'll learn to design, create, and manipulate a MySQL database for a real-world scenario: an online bookstore.

## Learning Objectives

By the end of this project, you will understand:

- What a database is and what makes a relational database unique
- What SQL stands for and its purpose
- What MySQL is and how to use it
- The difference between DDL (Data Definition Language) and DML (Data Manipulation Language)
- How to CREATE and ALTER tables
- How to SELECT data from tables
- How to INSERT, UPDATE, and DELETE data
- What subqueries are and how to use them
- How to leverage MySQL functions

## Resources

Before starting, review these materials:

- What is Database & SQL?
- Types of Databases (SQL & NoSQL)
- Introduction to SQL
- CRUD Operations with SQL
- Advanced SQL Techniques

## Project Structure

### Database Schema: `alx_book_store`

The database consists of five interconnected tables:

#### 1. **Books**
- `book_id` (Primary Key)
- `title` VARCHAR(130)
- `author_id` (Foreign Key → Authors)
- `price` DOUBLE
- `publication_date` DATE

#### 2. **Authors**
- `author_id` (Primary Key)
- `author_name` VARCHAR(215)

#### 3. **Customers**
- `customer_id` (Primary Key)
- `customer_name` VARCHAR(215)
- `email` VARCHAR(215)
- `address` TEXT

#### 4. **Orders**
- `order_id` (Primary Key)
- `customer_id` (Foreign Key → Customers)
- `order_date` DATE

#### 5. **Order_Details**
- `orderdetailid` (Primary Key)
- `order_id` (Foreign Key → Orders)
- `book_id` (Foreign Key → Books)
- `quantity` DOUBLE

## Tasks

### Task 0: Database Design
**File:** `alx_book_store.sql`

Create the complete database schema for the online bookstore with all tables and relationships as specified above.

**Requirements:**
- File extension must be `.sql`
- All SQL keywords in UPPERCASE

---

### Task 1: Database Creation Script
**File:** `MySQLServer.py`

Write a Python script that creates the `alx_book_store` database in your MySQL server.

**Requirements:**
- Print success message: `Database 'alx_book_store' created successfully!`
- Handle cases where database already exists (script should not fail)
- Print error messages for connection failures
- Properly handle database connection opening and closing
- No SELECT or SHOW statements allowed

---

### Task 2: Create Tables
**File:** `task_2.sql`

Write a SQL script that creates all five tables in the `alx_book_store` database.

**Requirements:**
- Create: Books, Authors, Customers, Orders, Order_Details
- All SQL keywords in UPPERCASE

---

### Task 3: List All Tables
**File:** `task_3.sql`

Write a script that lists all tables in the `alx_book_store` database.

**Requirements:**
- Database name will be passed as an argument to the mysql command

---

### Task 4: Table Description
**File:** `task_4.sql`

Write a script that prints the full description of the `books` table.

**Requirements:**
- Database name will be passed as an argument
- Cannot use DESCRIBE or EXPLAIN statements
- All SQL keywords in UPPERCASE

---

### Task 5: Single Row Insertion
**File:** `task_5.sql`

Insert a single customer record into the `customer` table.

**Data:**
- `customer_id` = 1
- `customer_name` = Cole Baidoo
- `email` = cbaidoo@sandtech.com
- `address` = 123 Happiness Ave.

**Requirements:**
- Database name passed as argument
- All SQL keywords in UPPERCASE

---

### Task 6: Multiple Row Insertion
**File:** `task_6.sql`

Insert multiple customer records into the `customer` table.

**Data:**

| customer_id | customer_name | email | address |
|-------------|---------------|-------|---------|
| 2 | Blessing Malik | bmalik@sandtech.com | 124 Happiness Ave. |
| 3 | Obed Ehoneah | eobed@sandtech.com | 125 Happiness Ave. |
| 4 | Nehemial Kamolu | nkamolu@sandtech.com | 126 Happiness Ave. |

**Requirements:**
- Database name passed as argument
- All SQL keywords in UPPERCASE

---

## Repository Information

**GitHub Repository:** `Intro_to_DB`

### File Structure
```
Intro_to_DB/
├── alx_book_store.sql
├── MySQLServer.py
├── task_2.sql
├── task_3.sql
├── task_4.sql
├── task_5.sql
└── task_6.sql
```

## Completion

Well done on completing this project! Let the world hear about this milestone achieved.

🚀 [Click here to tweet!](https://twitter.com/intent/tweet) 🚀

---

**Happy Coding!** 🎉