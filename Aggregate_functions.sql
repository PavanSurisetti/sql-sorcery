-- aggregate functions are the function that performs a calculation on set of rows in a table and returns a single summarized value
use db;
create table agFunc(id int,name varchar(30),age int,salary float,dept varchar(30));
describe agFunc;
insert into agFunc values (1,'Ganesha',20,3000000,'CSE'),(2,'Satya',21,3100000,'ML'),(3,'Edith',30,2000000,'ECE'),(4,'suresh',50,1000000,'IT');
insert into agFunc values(5,'Charles',20,30000000,'CSE');
select * from agFunc;
-- COUNT()
select count( dept) from agFunc; -- this will return 5 it will no of rows
select count(distinct dept) from agFunc;-- this will return 4 beacuse we keep the disticnt, it will give only the different records 
-- SUM()
select sum(salary) from agFunc; -- it will give the total salary across the different departments
-- MIN()
select min(age) from agFunc; -- it wil fetch the minimum value in the age column
-- MAX()
select max(age) from agFunc; -- it will fetch the maximum value in the age column
-- AVG()
select avg(salary) from agFunc; -- it will give the average salary 
