-- not null constraint 
use db;
create table age_table(age int NOT NULL);
describe age_table;
insert into age_table values(1),(2);
select * from age_table;
-- insert into age_table values(); if you try this, you will get an error
