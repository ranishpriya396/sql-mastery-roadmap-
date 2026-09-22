-- greate database 
create database ml_practice;

-- database 
use ml_practice;

-- create table 
create table students(
st_id int ,
name varchar(50),
age int ,
emiail int 
);

-- add constraints
create table employees (
emp_id int primary key  not null ,
name varchar(50) not null ,
department varchar(50) not null ,
salary decimal(10,2) 
);

-- add column 
alter table employees
add column phone varchar(13);

-- modify columns 
alter table employees 
modify column phone varchar(50);

-- rename columns 
alter table employees 
rename column department to dept_name ; 

-- drop columns 
alter table employees 
drop column phone ;

-- add columns 
alter table employees 
add column email varchar(50) ; 

-- add contraints 
alter table employees
add constraint check_email unique(email);

-- rename table 
rename table students to students_details;

-- backup
create table employees_backup like employees;

-- Remove **all records** from `employees_backup` while keeping the table structure.
truncate employees_backup;

-- delete table 
drop table employees_backup;


-- — Interview-style


alter table employees 
add joining_date varchar(50);
alter table employees
modify column salary varchar(50);

alter table employees
rename column dept_name to dept;

-- dml 
