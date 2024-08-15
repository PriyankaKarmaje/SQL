--Module 2

/* Create a customer table which comprises of these columns – ‘customer_id’, ‘first_name’, 
‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’ */

create table customer
(
customer_id int,
first_name varchar(30), 
last_name varchar(30),
email varchar(50),
address varchar(30),
city varchar(30),
state varchar(30),
zip int
);

select * from customer;

/*Insert 5 new records into the table*/

insert into customer values
(111,'Priya','Kayara','priya@gmail.com','5th cross','Bengaluru','Karnataka','560010'),
(222,'Keerthi','Bhat','bhat@gmail.com','8th main','Mysuru','Karnataka','570080'),
(333,'Praneetha','Rao','praneetha@yahoo.com','New road 9th cross','Chennai','Tamilnadu','543213'),
(444,'Raj','Shenoy','raj@hotmail.com','10th main','Hydrabad','Andrapradesh','673990'),
(555,'Harsha','Nayak','nayak@gmail.com','Parallel phase 6th main','Cochin','Kerala','970010');

/*Select only the ‘first_name’ & ‘last_name’ columns from the customer table*/

Select first_name, last_name from customer

/*Select those records where ‘first_name’ starts with “P” and city is ‘Bengaluru'*/

select * from customer where first_name like 'P%' and City = 'Bengaluru';










