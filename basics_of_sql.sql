create database demo_schema;
use demo_schema;

/* __________________Create a table in schema_______________________ */

create table students
(
stud_id int not null,
sub_id varchar(10),
Name varchar(20),
primary key(stud_id)
);
/* _______________________DATA Definition Language _________________*/
/*____ CREATE ____ ALTER _____ DROP______ */
create table subjects
(
sub_id varchar(10),
sub_name varchar(10),
primary key (sub_id)
);

create table faculty
(
faculty_id varchar(10),
faculy_name varchar(20)
);
/* _____________Look up in table __________ */
select * from students;
select * from faculty;
select * from subjects;
/* _______________ALTER table ___________________ */

alter table faculty
add primary key(faculty_id);
alter table students
add marks int; -- add another column to students table
/* ____________________ Dropping Tables ____________________ */

drop table faculty; -- drop faculty table from schema

/* _________________ Data Manipulation Language _________________________ */
/*____ Insert ____ Update _____ Delete______ */

/* ________________ Inserting Values in Table ___________*/
insert into students (stud_id, sub_id, Name,marks)
values (100,'sql1','USA',50),
(101,'sql1','Prague',70),
(102,'python','Czech',50),
(103,'revit','Afghan',70),
(104,'tableu','Iran',50),
(105,'sql1','Australia',80),
(106,'Powerbi','Italy',77);

select * from students;
/* ___________ Update student table _____ */
update students
set sub_id = 'SQL'
where stud_id =100;
update students
set sub_id = 'SQL'
where stud_id =101;
update students
set sub_id = 'SQL'
where stud_id =105;

select * from students;

/* ___________ delete from student table _____ */

delete from students where stud_id = 103; -- deletes complete row in table related to supplied stud_id
select * from students;

/* __________________ SELECT STATEMENT __________*/

use sakila; -- activate sakila database 

select * from film;  
select title , rating
from film;
/* _________________ AGGREGATION _____________________ */
/* select count(col_name) from ____ where ___(optional)___ */
select count(title)
from film;
select count(*) as total_entries
from film;

-- distinct - elist all discrete values from column specified
select distinct rental_duration
from film;
select count( distinct rental_duration) as durations_available -- returns total unique values
from film;

-- to check null

select count(*) as null_count   -- as is used for aliasing to change the header in result
from film
where original_language_id is null;

-- check the average
select avg(length)
from film;
-- rounding off to 2 decimals
select round(avg (length),2) as rounded_to_2
from film;

-- summing upd
select sum(rental_duration)
from film;
-- max
select max(rental_duration)
from film;
-- min
select min(rental_duration)
from film;
-- mean
select avg(rental_duration)
from film;

/* _______________ Group by and Order by _________________*/

select * from film;

select rental_duration, count(*)
from film
group by rental_duration; -- returns count of rental_durations categorized

select rating, count(*) as count
from film
group by rating; -- returns count of categories grouped by categories

select rating, count(*) as count
from film
group by rating 
order by count; -- returns table in ascending order of count

select rating, count(*) as count
from film
group by rating 
order by count desc; -- returns table in descending order of count

select rental_duration, count(*) as count
from film
group by rental_duration
order by count desc
limit 1; -- returns only top entry of result

/* ___________________WHERE  and LIMIT clause__________________________ */
select * from film;
-- return count of films where rating is 6
select rating,count(*)
from film
where rental_duration =6
group by rating; 

-- return count of films where rating is greater than 3 and sort descending
select rating,count(*) as count
from film
where rental_duration >3
group by rating
order by count desc;

-- return count of films where rating is greater than 3 and give only top 2 entries
select rating,count(*) as count
from film
where rental_duration >3
group by rating
order by count desc
limit 2;

-- return count of films where rating is greater than 3 and give only top 2 entries skipping first one
select rating,count(*) as count
from film
where rental_duration >3
group by rating
order by count desc
limit 2
offset 1;

-- return count of films where rating is greater than 3 and give third largest entry
select rating,count(*) as count
from film
where rental_duration >3
group by rating
order by count desc
limit 2,1;

/* ________________________________________________________________________________ */
