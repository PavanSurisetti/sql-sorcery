use db;
create table aadharInfo(id int unique);
describe aadharInfo;
insert into aadharInfo values (123),(456);
select *from aadharInfo;
-- insert into aadharInfo values (123),(456); you will get error as duplicate entry
insert into aadharInfo values (),(); -- this entries will be represented as NULL in the table