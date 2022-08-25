drop table Customers;
drop table Orders;
Create table If Not Exists Customers (Id int NOT NULL, Name varchar(255));
Create table If Not Exists Orders (Id int  NOT NULL, CustomerId int);
Truncate table Customers;
insert into Customers (Id, Name) values ('1', 'Joe');
insert into Customers (Id, Name) values ('2', 'Henry');
insert into Customers (Id, Name) values ('3', 'Sam');
insert into Customers (Id, Name) values ('4', 'Max');
Truncate table Orders;
insert into Orders (Id, CustomerId) values ('1', '3');
insert into Orders (Id, CustomerId) values ('2', '1');

select * from customers;

select * from orders; 

#Solution

select name from customers
where id not in (select CustomerId from Orders);

