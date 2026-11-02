create database students_table;

use students_table;

create table student(
  id int primary key,
  name varchar(100),
  department varchar(50),
  city varchar(50),
  marks decimal(5,2),
  fees int,
  status varchar(30)
);

insert into student
(id,name,department,city,marks,fees,status)
values
(1, 'Arun', 'Computer Sci.', 'Kozhikode', 85.5, 45000, 'Active'),
(2, 'Meera', 'Data Science', 'Kochi', 92, 50000, 'Active'),
(3, 'Rahul', 'Commerce', 'Kannur', 72.5, 30000, 'Active'),
(4, 'Anjali', 'Mathematics', 'Thrissur', 88, 35000, 'Active'),
(5, 'Nikhil', 'Computer Sci.', 'Kochi', 67, 45000, 'Active'),
(6, 'Priya', 'Data Science', 'Kozhikode', 96.5, 50000, 'Active'),
(7, 'Akhil', 'Commerce', 'Palakkad', 55, 30000, 'Inactive'),
(8, 'Sneha', 'Computer Sci.', 'Kannur', 81, 45000, 'Active'),
(9, 'Vishnu', 'Data Science', 'Thrissur', 78.5, 50000, 'Active'),
(10, 'Divya', 'Mathematics', 'Kochi', 91, 35000, 'Active'),
(11, 'Kiran', 'Computer Sci.', 'Kozhikode', 64, 45000, 'Inactive'),
(12, 'Lakshmi', 'Data Science', 'Kannur', 89.5, 50000, 'Active');

select * from student;

select name,department,city,marks
from student;

select * from student
where marks between 70 and 90;

select * from student
where status='Active' and department in ('Data Science','Computer Sci.');

select * from student
where name like 'A%';

select top 5 * from student
order by marks desc;

select count(*) as total_students
from student;

select department, avg(marks) as average_marks
from student
group by department;

select department, count(*) as total_students
from student
group by department;

select department, avg(marks) as average_marks
from student
group by department
having avg(marks)>=80;

select 
max(marks) as highest_marks,
min(marks) as lowest_marks
from student;

create table departments(
  department varchar(50),
  hod_name varchar(100),
  building varchar(50)
);
insert into departments
(department,hod_name,building)
values
('Computer Science', 'Suresh Kumar', 'Block A'),
('Data Science', 'Anitha Nair', 'Block B'),
('Commerce', 'Rahul Menon', 'Block C'),
('Mathematics', 'Priya Das', 'Block D'),
('Mechanical', 'Arun Raj', 'Block E'),
('Electronics', 'Meera Thomas', 'Block F');

select * from departments;

select
  S.name,
  S.department,
  D.hod_name,
  D.building
from student S
inner join departments D
on S.department=D.department;

select department
from student
union
select department 
from departments;

select department
from student
union ALL
select department
from departments;
















