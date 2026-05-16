-- creating  table and modifying a column using ALTER Command
show databases;
use db;
create table info2(id int,name varchar(20));
describe info2;
alter table info2 modify  name varchar(40);
describe info2; -- i am modifying the size of the name here using the alter command