--  creating a table for index operations
use db;
show tables;
create table student(id int primary key,name varchar(30),age int);
insert into student values(1,'Ganesha',20),(2,'Satya',21),(3,'Sai',22),(4,'Charles',25);
select *from student;
-- accessing without a index
select *from student where name='Charles';
-- accesisnng with index
create index idx_name on student(name);
select *from student where name='Charles';
-- to delete an index 
drop index idx_name on stduent;