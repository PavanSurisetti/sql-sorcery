-- creating a table and using relations
use db;
create table teacher(id int primary key,name varchar(30));
insert into teacher values(1,'Ganesha'),(2,'Satya'),(3,'Edith');
select *from teacher;
create  table stud_tb(id int primary key ,name varchar(30),tid int,foreign key(tid) references teacher(id));
insert into stud_tb values(1,'Aryan',1),(2,'alice',1),(3,'bob',1);
select *from stud_tb;
