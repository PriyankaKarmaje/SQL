/* Module 5 Assignment */

/* Arrange the ‘Orders’ dataset in decreasing order of amount */

Select * from Orders order by Amount DESC;

/* Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. 
Create another table with name ‘Employee_details2’, which comprises of same columns as first table */

--Employee_details1

Create table Employee_details1
(
Emp_id1 int,
Emp_name1 varchar(30),
Emp_salary1 int,
);

Insert into Employee_details1 values
(101, 'Manasi', 18000),
(102, 'Chirag', 20000),
(103, 'Swara', 30000),
(104, 'Amar', 70000),
(105, 'Hemanth', 15000);

Select * from Employee_details1

Create table Employee_details2
(
Emp_id int,
--Emp2_name varchar(30),
--Emp2_salary int,
);

Alter table Employee_details2
Drop column Emp2_id;

Select * from Employee_details2

truncate table Employee_details2; 

alter table Employee_details2
add Emp_id int;

Insert into Employee_details2 values
('Himanshu', 40000, 201),
('Swetha', 20000, 202),
('Giri', 35000, 203),
('Mithun', 70000, 204),
('Pari', 25000, 205);

/* Apply the union operator on these two tables */

Select Emp_id from Employee_details1
Union
Select Emp_id from Employee_details2
order by Emp_id;

/* Apply the intersect operator on these two tables */
Select Emp_id from Employee_details1
intersect
Select Emp_id from Employee_details2
order by Emp_id;

/*  Apply the except operator on these two tables*/
Select Emp_id from Employee_details1
except
Select Emp_id from Employee_details2
order by Emp_id;