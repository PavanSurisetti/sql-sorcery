use db;
create table emp(id int primary key,name varchar(30) NOT NULL,age int not null,dept varchar(30) default 'NTD',salary float);
describe emp;
insert into emp values(1,'Ganesha',30,'CSE',50000),(2,'Satya',28,'CSE',45000),(3,'Alexa',50,'CSE',80000),(4,'Raju',56,'IT',30000),(5,'Maeve',30,'IT',23000),(6,'Rajesh',63,'MEC',80000),(7,'satish',50,'MEC',75000);
select *from emp;
-- finding no of employees in each branch where no of employees greater than 2 from each department
select dept, count(dept) as no_of_employees from emp group by dept having no_of_employees>2;
-- finding avg age of employee in each department whose average age is greater than 50 from each department
select dept,avg(age) as average_age from emp group by dept having average_age>50;
-- finding total funding to each department and whose fund is greater than 60000
select dept,sum(salary) as total_fund from emp group by dept having total_fund>60000;