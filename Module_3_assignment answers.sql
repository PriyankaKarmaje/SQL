/* Module 3 Assignment */

/* Create an ‘Orders’ table which comprises of these columns – ‘order_id’, ‘order_date’, ‘amount’, 
‘customer_id’ */

create table Orders
(
Order_id int,
order_date date,
Amount money,
Costomer_id int
);

insert into Orders values
--(111,'2023-05-21',2800,121),
--(222,'2022-06-19',8800,822),
--(333,'2020-08-17',6400,923),
--(444,'1019-09-01',1900,136),
--(555,'2021-03-26',6500,592),
(121,'2023-05-21',2800,111),
(470,'2022-06-19',8800,222),
(098,'2020-08-17',6400,888),
(764,'2019-09-01',1900,999),
(124,'2021-03-26',6500,444);

select * from Orders

/* Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column */

Select * from customer
inner join
Orders
on
customer.customer_id = Orders.Costomer_id

/* Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column */
 
 /* left join*/

Select * from customer
left join
Orders
on
customer.customer_id = Orders.Costomer_id

/* right join*/

Select * from customer
right join
Orders
on
customer.customer_id = Orders.Costomer_id

/* full outer join*/

Select * from customer
full outer join
Orders
on
customer.customer_id = Orders.Costomer_id

/* Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 888 */

select * from Orders

update Orders set Amount = 100 where Costomer_id = 888 








