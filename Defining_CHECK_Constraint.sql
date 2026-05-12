-- creating a not null constraint
use db;
create table checkConstraint( age int CHECK(age<=18));
describe checkConstraint;
insert into checkConstraint values(1),(2),(4);
select *from checkConstraint;
-- insert into checkConstraint values(40); this will gives an error