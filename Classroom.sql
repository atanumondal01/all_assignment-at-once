create database test;

use test;
create table emp_manager(
emp_id int,emp_name varchar(50),
salary int,
manager_id int);
insert into emp_manager values(	1	,'Ankit',	10000	,4	);
insert into emp_manager values(	2	,'Mohit',	15000	,5	);
insert into emp_manager values(	3	,'Vikas',	10000	,4	);
insert into emp_manager values(	4	,'Rohit',	5000	,2	);
insert into emp_manager values(	5	,'Mudit',	12000	,6	);
insert into emp_manager values(	6	,'Agam',	12000	,2	);
insert into emp_manager values(	7	,'Sanjay',	9000	,2	);
insert into emp_manager values(	8	,'Ashish',	5000	,2	);
###########################
select * from emp_manager;

#see the join table from right to left 
select * from emp_manager as e
join emp_manager as b
on e.emp_id=b.manager_id;

select e.emp_name ,b.emp_name as manager_name,
 e.salary as emp_salary ,b.salary as manager_salary
 from emp_manager as e
join emp_manager as b
on e.emp_id=b.manager_id;

#where emp salary is more the manager salary
select e.emp_name ,b.emp_name as manager_name,
 e.salary as emp_salary ,b.salary as manager_salary
 from emp_manager as e
join emp_manager as b
on e.emp_id=b.manager_id
where e.salary>b.salary;

