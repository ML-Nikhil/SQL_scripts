create database skilledge_schema;
use skilledge_schema;

create table students
(
stud_id int not null,
sub_id varchar(10),
Name varchar(20),
primary key(stud_id)
);
create table subjects
(
sub_id varchar(5),
sub_name varchar(10),
primary key(sub_id)
);
create table faculty_sub_map
(
faculty_id int,
subj_id varchar(10),
primary key(faculty_id)
);
alter table faculty_sub_map
add column (faculty_name varchar(20));

-- alter table faculty_sub_map
-- add foreign key(subj_id);

insert into students
values(00,'ML','Nikhil');

insert into students(stud_id,sub_id,Name)
values(01,'ML','Vladimir'),(00,'SQL','Dmitry');

drop table faculty_sub_map;
drop table subjects;



update students
set sub_id = 'SQL'
where stud_id =00;

select * from students;

insert into students
values(01,'Sql','Dmitry');

delete from students where stud_id in (00,01);

select * from students;

alter table students add marks int;

alter table students
drop  marks;