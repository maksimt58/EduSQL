drop table employee;

Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int);

Truncate table Employee;

insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
insert into Employee  values ('3', 'Sam', '60000', null);
insert into Employee  values ('4', 'Maks', '90000', null);

select * from employee;

#Solution

select e1.name from employee as e1
left join employee as e2
on e1.ManagerId = e2.id
where e1.ManagerId is not null AND e1.salary > e2.salary;