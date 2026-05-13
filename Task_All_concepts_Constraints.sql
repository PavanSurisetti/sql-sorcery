-- TASK: Student–Course Management System

-- Requirements:

-- Create a database
-- Name: college_db
-- Create course table
-- Columns:
-- cid – INT – PRIMARY KEY
-- cname – VARCHAR(30) – NOT NULL
-- fees – INT – CHECK (fees > 0)
-- Create student table
-- Columns:
-- sid – INT – PRIMARY KEY
-- sname – VARCHAR(30) – NOT NULL
-- email – VARCHAR(50) – UNIQUE
-- age – INT – CHECK (age >= 18)
-- cid – INT – FOREIGN KEY references course(cid)
-- country – VARCHAR(30) – DEFAULT 'India'
-- Insert data

-- Insert into course:
-- (101, 'Python', 5000)
-- (102, 'Java', 6000)

-- Insert into student:
-- One valid row
-- One row with default country
-- One row with duplicate email (should fail)
-- One row with invalid cid (should fail)
-- One row with age less than 18 (should fail)

-- Step-1
create database college_db;
use college_db;
-- step-2
create table course(cid int primary key,cname varchar(30) NOT NULL,fees int check(fees>0));
describe course;
-- step-3
create table student(sid int primary key,sname varchar(30) NOT NULL, email varchar(30) UNIQUE , age int check(age>18),cid int , foreign key(cid) references course(cid),country varchar(30) default 'india');
describe student;
-- step-4
insert into course values(101,'Python',5000),(102,'Java',6000);
select *from course;
-- step-5
insert into student values(1,'Ganesha','Ganesha@gmail.com',20,101,'India');
select *from student;
insert into student values(2,'Satya','Satya@gmail.com',21,102,default);-- default country
insert into student values(3,'Stark','Ganesha@gmail.com',19,102,'US'); -- duplicate entry for email 
insert into student values(4,'Lucy','Lucy@gmail.com',20,103,'India'); -- a foreign key constraint fails cid fails
insert into student values(5,'Enola','Enola@gmail.com',17,101,'England'); -- check constraint fails for age