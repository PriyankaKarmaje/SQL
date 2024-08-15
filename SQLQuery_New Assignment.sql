
/* Create the following Tables and insert the values accordingly and 
Perform the tasks mentioned below */

create table Employee
(
emp_id int,
first_name varchar(30), 
last_name varchar(30),
salary int,
joining_date datetime,
);

select * from Employee;

insert into Employee values
(1,'Anika','Arora','100000','2020-02-14 9:00:00','HR'),
(2,'Veena','Verma','80000','2011-06-15 9:00:00','Admin'),
(3,'Vishal','Singhal','300000','2020-02-16 9:00:00','HR'),
(4,'Sushanth','Singh','500000','2020-02-17 9:00:00','Admin'),
(5,'Bhupal','Bhati','500000','2011-06-18 9:00:00','Admin'),
(6,'Dheeraj','Diwan','200000','2011-06-19 9:00:00','Account'),
(7,'Karan','Kumar','75000','2020-01-14 9:00:00','Account'),
(8,'Chandrika','Chauhan','90000','2011-04-15 9:00:00','Admin');

create table Employee_Bonus
(
emp_ref_id int,
bonus int, 
bonus_date datetime,
);

select * from Employee_Bonus;

insert into Employee_Bonus values
(1,'5000','2020-02-16'),
(2,'3000','2011-06-16'),
(3,'4000','2020-02-16'),
(1,'4500','2020-02-16'),
(2,'3500','2011-06-16');


create table Employee_Title
(
emp_ref_id int,
emp_title varchar(50), 
affective_date datetime,
);

select * from Employee_Title;

insert into Employee_Title values
(1,'Manager','2016-02-20'),
(2,'Executive','2016-06-11'),
(8,'Executive','2016-06-11'),
(5,'Manager','2016-06-11'),
(4,'Ast Mgr','2016-06-11'),
(7,'Executive','2016-06-11'),
(6,'Lead','2016-06-11'),
(3,'Lead','2016-06-11');


SELECT first_name
FROM Employee AS Employee_name;

SELECT UPPER(last_name)FROM Employee;

SELECT DISTINCT dept FROM Employee;

SELECT SUBSTRING(first_name,1,3) FROM Employee;

select concat(first_name,' ',last_name) AS FullName from Employee;

SELECT * FROM Employee ORDER BY first_name ASC;

SELECT * FROM Employee ORDER BY first_name ASC, dept DESC;

select * from Employee where first_name='Veena' union select * from Employee where first_name='Karan';

select * from Employee where dept='Admin';

select * from Employee where first_name like 'V%';

select * from Employee where Salary between 100000 and 500000;

select * from Employee where Month(Joining_date)=2 and Year(Joining_date)=2020;

select concat(First_name,' ',Last_Name) as Full_Name from Employee where Salary between 50000 and 100000;

select * from Employee where Emp_id in (select Emp_id from Employee where Emp_id%2<>0);

select salary from Employee order by Salary desc;

select First_name from Employee  where Salary in(select Salary from Employee e where Employee.emp_id<>e.emp_id);                  

select distinct Salary from Employee order by Salary desc;

select dept,count(First_name) as cnt from Employee group by dept;

select concat(First_name,' ',Last_Name) as Full_Name,dept,Salary from Employee where Salary in(select max(Salary) from Employee group by dept);

select concat(First_name,' ',Last_Name) as Full_Name from Employee where Salary in(select max(Salary) from Employee);

select dept,AVG(Salary) from Employee group by dept;

select concat(e1.First_name,' ',e1.Last_Name) as Full_Name,
e2.Bonus from Employee e1,
Employee_Bonus e2 where e1.emp_id=e2.emp_ref_id and bonus in (select max(Bonus) from Employee_Bonus);

select e1.First_name,e2.Emp_Title from Employee e1,Employee_Title e2 where e1.Emp_id=e2.Emp_ref_id;



