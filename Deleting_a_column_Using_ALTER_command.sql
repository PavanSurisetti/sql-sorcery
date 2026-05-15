-- creating  table and deleting a column using ALTER command
use db;
create table info1(id int,name varchar(20),age int);
describe info1;
insert into info1 values(1,'Ganesha',20),(2,'Satya',19);
select *from info1;
alter table info1 drop column age;
select *from info1;-- if you do this the complete data of age column will be deleted