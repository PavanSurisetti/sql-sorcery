-- deifning primary key constraint
create database db;
use db;
create table course(cid int primary key,cname varchar(20));
create table student(sid int primary key,sname varchar(20),cid int,foreign key(cid) references course(cid));
insert into course values(101,'Python'),(102,'DVC');
insert into student values(1,'Ganesha',101);
-- insert into student values(2,'Ganesha',103); -- Foreign key value must already exist in parent table [it will give an error]