-- creating  a table and adding a new constraint using ALTER Method
show databases;
use db;
create table info4(id int,name varchar(20),age int check(age>20));
describe info4;
insert into info4 values(1,'Ganesha',21);
select *from info4;
show create table info4;
-- i got this after running the above command this used to identify the constraint name which i have not given manually so the system will allocates by default
-- CREATE TABLE `info4` (
--    `id` int DEFAULT NULL,
--    `name` varchar(20) DEFAULT NULL,
--    `age` int DEFAULT NULL,
--    CONSTRAINT `info4_chk_1` CHECK ((`age` > 20))
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
alter table info4 drop constraint info4_chk_1; -- successfully dropped the constraint
insert into info4 values(2,'Ganesha',18);
select *from info4;