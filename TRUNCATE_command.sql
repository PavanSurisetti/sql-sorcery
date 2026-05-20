-- creating  a table and using TRUNCATE command to delete the data
show databases;
use db;
create table info5(id int,name varchar(20),age int);
insert into info5 values(1,'Ganesha',19),(2,'satya',21);
select *from info5;
truncate table info5;
select *from info5; -- if you try to access it you wont get an error ,but the data will be removed from the table