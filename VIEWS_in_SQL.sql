-- creating a table and view for it 
use db;
show tables;
create table students( id int primary key,name varchar(30) NOT NULL,marks float not null);
describe students;
insert into students values(1,'Ganesha',100),(2,'Satya',99),(3,'Pavan',95),(4,'alex',50),(5,'ravi',45),(6,'William',60),(7,'kimiko',75),(8,'adam',85),(9,'sara',70),(10,'annie',90);
select *from students;
create view first_class as select * from students where marks>=90;
select *from first_class;
update first_class set marks=92 where id=10;
select *from first_class;
select *from students;
-- changes made on both view and table both will be effected
show tables;-- here the view of first_class is also added a table ,you can observe here
create view second_class as select * from students where  marks between 80 and 89;
select *from second_class;
create view pass as select *from students where marks between 45 and 79;
select *from pass;
-- dropping a view 
show tables;
drop view pass ; -- successfully pass view is deleted