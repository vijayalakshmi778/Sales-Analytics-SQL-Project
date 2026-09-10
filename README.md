# SQL Employee & Salary Analysis

## Project Overview

This project demonstrates practical **SQL data analysis techniques** using employee and salary data.

The project focuses on writing SQL queries to analyze employee information, compare employee salaries with managers, identify employees based on salary conditions, and perform salary-based statistical analysis using aggregate functions and subqueries.

The main objective of this project is to demonstrate how SQL can be used to answer real-world business questions from structured employee data.

---

## Project Objectives

The project is designed to practice and demonstrate:

* Database and table creation
* Inserting structured employee data
* Retrieving employee records
* Filtering data using `WHERE`
* Using table aliases
* Performing `INNER JOIN`
* Performing a **Self Join**
* Comparing employee and manager salaries
* Using aggregate functions
* Calculating average salary
* Finding maximum and minimum salary
* Using subqueries
* Comparing individual salaries against the company average
* Identifying employees based on salary conditions

---

## Database Structure

The project begins by creating a database named:

```sql
CREATE DATABASE leetcode;
USE leetcode;
```

An `Employee` table is created with the following columns:

| Column      | Data Type    | Description                  |
| ----------- | ------------ | ---------------------------- |
| `id`        | INT          | Unique employee identifier   |
| `name`      | VARCHAR(100) | Employee name                |
| `salary`    | INT          | Employee salary              |
| `managerId` | INT          | ID of the employee's manager |

The `id` column is defined as the **Primary Key**.

```sql
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT,
    managerId INT
);
```

---

## Sample Employee Data

The project includes sample employee records:

| ID | Name  | Salary | Manager ID |
| -: | ----- | -----: | ---------: |
|  1 | Joe   | 70,000 |          3 |
|  2 | Henry | 80,000 |          4 |
|  3 | Sam   | 60,000 |       NULL |
|  4 | Max   | 90,000 |       NULL |

The `managerId` column establishes a relationship between an employee and another employee who acts as their manager.

---

# SQL Analysis Performed

## 1. Employee and Manager Relationship Analysis

A **Self Join** is used to work with employee and manager information stored in the same table.

```sql
SELECT emp.name, emp.salary
FROM Employee AS emp
INNER JOIN Employee AS man
ON emp.id = man.managerId;
```

### Purpose

This query demonstrates how the same table can be joined with itself to analyze hierarchical relationships.

The table is treated as two logical tables:

* `emp` → Employee
* `man` → Manager

This is useful when employee and manager information is maintained within the same table.

---

## 2. Identifying Employee-Manager Relationships

```sql
SELECT *
FROM Employee AS emp
INNER JOIN Employee AS man
ON man.managerId = emp.id;
```

### Purpose

This query connects employees with their corresponding managers using the `managerId` relationship.

It demonstrates the practical use of:

* `INNER JOIN`
* Table aliases
* Self Join
* Primary key and foreign-key-like relationships

---

## 3. Salary Comparison Between Employees and Managers

```sql
SELECT man.name
FROM Employee AS emp
INNER JOIN Employee AS man
ON emp.id = man.managerId
WHERE emp.salary < man.salary;
```

### Business Question

**Which employees have a lower salary than their manager?**

### SQL Concepts Used

* Self Join
* `INNER JOIN`
* Table aliases
* `WHERE`
* Salary comparison

This type of analysis can be useful for understanding employee-manager salary relationships.

---

# Company Employee Salary Analysis

The project also uses an `employees` table from the `company_db` database.

```sql
USE company_db;

SELECT *
FROM employees;
```

This section focuses on salary-based employee analysis.

---

## 4. Employees Earning More Than 100,000

```sql
SELECT *
FROM employees
WHERE salary > 100000;
```

### Business Question

**Which employees have a salary greater than 100,000?**

### Concepts Used

* `SELECT`
* `FROM`
* `WHERE`
* Comparison operator `>`

---

## 5. Calculate Average Employee Salary

```sql
SELECT AVG(salary)
FROM employees;
```

### Business Question

**What is the average salary of employees?**

### SQL Function Used

`AVG()` calculates the average value of a numeric column.

---

## 6. Employees Earning More Than the Average Salary

```sql
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

### Business Question

**Which employees earn more than the company's average salary?**

This query demonstrates the use of a **subquery**.

### Query Flow

```text
Inner Query
    ↓
Calculate Average Salary
    ↓
Outer Query
    ↓
Compare Employee Salary
    ↓
Return Employees Above Average
```

The inner query calculates the average salary first:

```sql
SELECT AVG(salary)
FROM employees;
```

The outer query then compares each employee's salary with that calculated value.

---

## 7. Display Employee ID and Name Above Average Salary

```sql
SELECT employee_id, employee_name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

### Purpose

Instead of displaying all employee columns, this query returns only:

* Employee ID
* Employee Name

for employees whose salary is greater than the average salary.

This demonstrates how a subquery can be combined with selective column retrieval.

---

# 8. Find the Maximum Salary

```sql
SELECT MAX(salary)
FROM employees;
```

### Business Question

**What is the highest salary in the employee table?**

### SQL Function

`MAX()` returns the highest value from a column.

---

# 9. Find the Employee With the Minimum Salary

```sql
SELECT *
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);
```

### Business Question

**Which employee has the lowest salary?**

### Query Flow

```text
MIN(salary)
     ↓
Find Lowest Salary
     ↓
Compare With Employee Salaries
     ↓
Return Matching Employee
```

This is another example of using a **subquery with an aggregate function**.

---

# SQL Concepts Covered

The project demonstrates the following SQL concepts:

| Category         | Concepts                                 |
| ---------------- | ---------------------------------------- |
| Database         | `CREATE DATABASE`, `USE`                 |
| Table            | `CREATE TABLE`                           |
| Data             | `INSERT INTO`                            |
| Retrieval        | `SELECT`                                 |
| Filtering        | `WHERE`                                  |
| Relationships    | Self Join                                |
| Joins            | `INNER JOIN`                             |
| Aliases          | `AS`                                     |
| Aggregation      | `AVG()`, `MAX()`, `MIN()`                |
| Comparison       | `>`, `<`, `=`                            |
| Advanced Queries | Subqueries                               |
| Analysis         | Salary comparison                        |
| Business Logic   | Above-average / minimum / maximum salary |

---

# Key Business Questions Answered

This SQL project demonstrates how to answer questions such as:

1. How can employee-manager relationships be identified?
2. How can a table be joined with itself?
3. Which employees have a lower salary than their manager?
4. Which employees earn more than 100,000?
5. What is the average employee salary?
6. Which employees earn more than the average salary?
7. How can only selected employee information be displayed?
8. What is the maximum salary?
9. Which employee has the minimum salary?

---

# SQL Techniques Demonstrated

### Self Join

Used to analyze relationships between employees and managers stored in the same table.

### Aggregate Functions

The project uses:

```sql
AVG()
MAX()
MIN()
```

to perform salary-level analysis.

### Subqueries

Subqueries are used to calculate values such as average and minimum salary and then use those results in the main query.

### Filtering

The `WHERE` clause is used to retrieve records based on salary conditions.

### Table Aliases

Aliases such as:

```sql
emp
man
```

make self-join queries easier to understand and write.

---

# Project Structure

```text
SQL-Employee-Salary-Analysis/
│
├── super-market-sale-analysis.sql
└── README.md
```

> Note: The current SQL file name is `super-market-sale-analysis.sql`, but the SQL content currently represents employee and salary analysis rather than supermarket sales analysis.

---

# How to Run the Project

## Step 1 — Open MySQL

Open the SQL script using a MySQL-compatible environment such as:

* MySQL Workbench
* MySQL Command Line
* Another MySQL-compatible SQL environment

## Step 2 — Execute the Database and Table Creation

Run the database and table creation statements.

```sql
CREATE DATABASE leetcode;
USE leetcode;
```

## Step 3 — Create the Employee Table

Execute the `CREATE TABLE Employee` statement.

## Step 4 — Insert the Sample Data

Run the `INSERT INTO Employee` statement.

## Step 5 — Execute the Analysis Queries

Run the queries individually to understand the output of:

* Self Join
* Employee-manager relationships
* Salary comparison
* Aggregate functions
* Subqueries

---

# Learning Outcomes

After completing this project, the learner will understand how to:

* Design a basic employee table
* Store employee-manager relationships
* Retrieve and filter employee data
* Use joins for relational analysis
* Perform Self Joins
* Compare values between related records
* Calculate salary statistics
* Use aggregate functions
* Write nested SQL queries
* Compare individual records against calculated values
* Convert business questions into SQL queries

---

# Future Enhancements

The project can be expanded with additional SQL analysis such as:

* Department-wise salary analysis
* Employee count by department
* Highest salary by department
* Second-highest salary
* Top 5 highest-paid employees
* Salary ranking using Window Functions
* Department-wise average salary
* Employees earning more than their department average
* Employee hierarchy analysis
* Salary distribution analysis
* Common Table Expressions (CTEs)
* Advanced business analysis queries

---

# Technologies Used

**Database:** MySQL
**Language:** SQL
**Analysis Area:** Employee & Salary Data Analysis

---

# Project Purpose

This project was created as a practical SQL learning and portfolio project to demonstrate the ability to transform employee-related business questions into SQL queries and perform structured data analysis using relational database concepts.

The project particularly focuses on **Self Joins, Aggregate Functions, Filtering, Salary Comparisons, and Subqueries**.

---

## Author

**Zetlan Technologies**

SQL Data Analysis Project

---

## License

This project is intended for educational and learning purposes.
