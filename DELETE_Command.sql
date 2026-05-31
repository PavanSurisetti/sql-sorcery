-- creating a table and updating a value
use db;
create table info(id int primary key,name varchar(20),age int);
describe info;
insert into info values(1,'Ganesha',20),(2,'Satya',18),(3,'Shazam',22);
select *from info;
delete from info where id=3;
select *from info;--  one record is deleted successfully