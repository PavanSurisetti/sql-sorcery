-- creating  a table and using DROP command to delete the entire object
show databases;
use db;
create table info5(id int,name varchar(20),age int);
insert into info5 values(1,'Ganesha',19),(2,'satya',21);
select *from info5;
drop table info5;
select *from info5; -- if you try to access it you will get an error like table not found