CREATE TABLE Person (
PersonId int,
FirstName varchar(255),
LastName varchar(255)
);

TRUNCATE table Person;

CREATE TABLE Address (
AddressId int,
PersonId int,
City varchar(255),
State varchar(255)
);

TRUNCATE table Address;

Insert into Person (PersonId, FirstName, LastName) values (
5,
'John',
'Lord'
);

Insert into Address (AddressId, PersonId, City, State) values (
'3',
'4',
'Columbia',
'Florida'
);

select * from Person;
select * from Address;