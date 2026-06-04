use db;
create table emp(id int primary key,name varchar(30) NOT NULL,age int not null,dept varchar(30) default 'NTD',salary float);
describe emp;
insert into emp values(1,'Ganesha',30,'CSE',50000),(2,'Satya',28,'CSE',45000),(3,'Alexa',50,'CSE',80000),(4,'Raju',56,'IT',30000),(5,'Maeve',30,'IT',23000),(6,'Rajesh',63,'MEC',80000),(7,'satish',50,'MEC',75000);
select *from emp;
-- column alias
select name as FULL_NAME from emp;
-- table alias
select e.name,e.dept from emp as e;