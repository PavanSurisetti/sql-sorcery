-- creating  table and adding a new column using ALTER Method
show databases;
create database db;
use db;
create table info(id int,name varchar(20));
describe info;
alter table info add column age int;