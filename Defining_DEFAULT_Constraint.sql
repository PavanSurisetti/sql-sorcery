use db;
create table default_table(name varchar(20),age int default 18);
describe default_table;
insert into default_table values('Ganesha',20);
select *from default_table;
insert into default_table values('Satya',default);