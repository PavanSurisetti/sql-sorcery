use db;
create table info5(id int,name varchar(20),age int);
insert into info5 values(1,'Ganesha',19),(2,'satya',21);
select *from info5; -- this is the basic retrieval of SELECT Command without any conditions
select id from info5; -- this is used to access only specific column
select *from info5 where age=21; -- this is used to done based on all columns
select *from info5 where name='Ganesha' and age=19; -- this is done based on two conditions we can apply 'and' 'or' 'not'
insert into info5 values(0,'Pavan',18);
select *from info5 order by age ;-- this is query fetches data from the table based on the age ascending order
select *from info5 order by name ; -- this fetches information based on the name order[ALPHABETICAL ORDER]
select *from info5  where age<=30 order by age LIMIT 2;-- this is done combination of two conditions where ordered by age and whose age is less than 30 and we use limiting here to limit the no of results
select *from info5 where name like '%a'; -- this gives the names ends with name ends with 'a'
select *from info5 where age IN(10,18,21); -- it will fetch  those only values, what you have specified in the IN range
select *from info5 where age between 18 and 19; -- both are inclusive 