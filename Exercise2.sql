create table if not exists Employee (Id int, Salary int);

truncate table Employee;

insert into Employee (Id, Salary) values ('1', '100');
insert into Employee (Id, Salary) values ('2', '200');
insert into Employee (Id, Salary) values ('3', '300');

select * from employee;

#Solution

select ifnull(MAX(salary),null) as SecondHighestSalary from employee
where Salary < (
select MAX(salary) from employee);
