CREATE DATABASE bepecbatch;
USE debatch;
CREATE TABLE employees ( name varchar(20), age int, year int, primary key(name));

SELECT 
    *
FROM
    employees;

INSERT INTO employees (name, age, year) VALUES ('Aditya', 18, 2);
INSERT INTO employees (name, age, year) VALUES ('Pavan', 19, 3);
SELECT * FROM employees;

create table customer
(
    customer_id     int,
    first_name      varchar(50),
    last_name       varchar(50),
    address         varchar(100),
    primary key (customer_id)
);

create table complaint
    (
    complaint_id  int,
    customer_id   int,
    complaint     varchar(200),
    primary key (complaint_id),
    foreign key (customer_id) references customer(customer_id)
    );
    

create table students
(
    student_id     int,
    name           varchar(50) not null,
    city           varchar(50),
    phone          varchar(20),
    email_address  varchar(50),
    primary key(student_id)
);

insert into students(student_id, name,city,phone,email_address) values( 123, 'akshay','pune','908988', 'xyz@gmail.com');
select * from students;

insert into students(student_id, name,phone,email_address) values( 124, 'Prakash','908988', 'xyz@gmail.com');
select * from students;
insert into students(student_id, name, phone,email_address) values( 125,'Kanth','908988', 'xyz@gmail.com');
select * from students;

create table student1
(
    student_id     int,
    name           varchar(50)  not null,
    city           varchar(50),
    phone          varchar(20),
    email_address  varchar(50)  unique,
    primary key(student_id)
);

/* Please try to create email address as both unique and not null */

insert into student1(student_id, name,city,phone,email_address) values( 123, 'akshay','pune','908988', 'xyz@gmail.com');
insert into student1(student_id, name,city,phone,email_address) values( 124, 'akshay','pune','908988', 'xxyz@gmail.com');
insert into student1(student_id, name,city,phone) values( 125, 'akshay','pune','908988');

select * from student1;
create database hospital_b;

use hospital_b;

select * from clevelanda;

select * from student1;

alter table student1 add age int;

select * from student1;

create table high_temperature
(
    city              varchar(50),
    year              int,
    high_temperature  int,
    constraint check (year between 1880 and 2200),
    constraint check (high_temperature < 200),
    primary key (city, year)
);

/* Please create examples for constraint check */

use bepecbatch;



create table job
(
    job_id     int,
    job_desc   varchar(100),
    shift      varchar(50) default '9-5',
    primary key (job_id)
);

/* Please test even Default Constraint */


select * from job;

alter table job drop column  job_desc;

/* try different alter table related operations on any dataset */

drop table job;

drop table job, student3;

create table student3
(
    student_id      int,
    student_name    varchar(100),
    trainer_id     int
);

create index student_supplier_index on student2(trainer_id);

show indexes from student2;

insert into student3 (student_id, student_name, trainer_id)
values (123, 'Rajeev', 345),
       (134, 'Kanth',456),
       (145, 'BEPEC', 567);

select * from students;

truncate table students;

select * from students;

truncate table clevelanda;

select * from clevelanda;

drop table students;

select * from students;

SELECT 
    *
FROM
    student3;

create index student3_supplier_index on student3(trainer_id);
show indexes from student3;

insert into student2
values (156, 'BEEPEC',678);

select * from boston;
drop table student1;

