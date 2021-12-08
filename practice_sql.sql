create database trial;
use trial;

create table students
(
stud_id int not null,
sub_id varchar(10),
admission_date date,
Name varchar(10),
marks int,
primary key(stud_id)
);

create table subjects
(
sub_id varchar(10),
sub_name varchar(10),
faculty_id varchar(10),
primary key (sub_id)
);

insert into students
values (100,'sql1',2021-01-01,'Abhilash',56),
(101,'python',2021-01-01,'Shwetal',55),
(102,'sql2',2021-03-01,'Ram',50),
(103,'python2',2021-04-01,'pooja',45),
(104,'tableu1',2021-05-01,'Rahul',30),
(105,'sql1',2021-06-01,'kunal',20),
(106,'sql1',2021-07-01,'kabir',60);

insert into subjects
values('sql1','SQL',501),
('sql2',' Adv_SQL',502),
('python1','Bas_Pyth',503),
('python2','Adv_Pyth',504),
('tableu1','Tableu',505);


-- Get a list of students with subject and marks obtained
select Name, sub_name as Subject, marks
from students
inner join subjects
on students.sub_id = subjects.sub_id;

-- get list of students admitted in jan of 2021 in sql1 batch
select admission_date
from students;

