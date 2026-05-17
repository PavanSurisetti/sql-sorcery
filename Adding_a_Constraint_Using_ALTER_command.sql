-- creating  a table and adding a new constraint using ALTER Method
show databases;
use db;
create table info3(id int,name varchar(20),age int);
describe info3;
alter table info3 add constraint Age_Check CHECK(age>=20);
describe info3;
insert into info3 values(1,'Ganesha',18); -- you will get an error here like Age_Check is voilated