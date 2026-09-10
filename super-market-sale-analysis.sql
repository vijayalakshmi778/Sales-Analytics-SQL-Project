create database leetcode;
use leetcode;

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT,
    managerId INT
);

INSERT INTO Employee (id, name, salary, managerId)
VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);


select emp.name,emp.salary from Employee as emp inner join Employee as man
on emp.id = man.managerId;

select * from Employee as emp inner join Employee as man
on man.managerId = emp.id;

select man.name from Employee as emp inner join Employee as man
on emp.id = man.managerId where emp.salary<man.salary;


use company_db;
select * from employees;

select * from employees where salary > 100000;
select avg(salary) from employees;

select * from employees where salary > ( select avg(salary) from employees );

select employee_id,employee_name from employees where salary > ( select avg(salary) from employees );

select max(salary) from employees;

select * from employees where salary = ( select min(salary) from employees ); 







