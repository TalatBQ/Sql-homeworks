create database class1 
use class1
go

create table test1 (id int, name varchar (20) )

insert into test1 values (1, 'talat'),(2, 'john')

select * from test1

create table employees (employee_id int, employee_name varchar (20), department nvarchar (20))

insert into employees values (101, 'josh', 'it'), (102, 'anna', 'hr'), (103, 'sam', 'sales')

select * from employees

alter table employees 
add department_id int
alter table employees
drop column department_id



truncate table employees
drop table employees
