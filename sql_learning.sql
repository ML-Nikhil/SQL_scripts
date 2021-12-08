/* ________________ Use Database ___________________ */
use sakila; -- to select database
select * from film;
/* ____________________ SELECT __________________ */
select title, rating 
from film;
/* ____________________ Count __________________ */
select count(title) from film;
-- Distinct
select count(distinct rating)from film;
-- averaging
select round(avg(rental_rate),2) 
from film;
select max(rental_duration) as max_rental
from film;

/* --------------------------------------------------------------------------------- */
-- Group By and Order By
-- select from where groupby orderby
-- sort asc ascending and desc by descending

select rating,count(*) as count
from film
group by rating
order by count asc;

select rental_duration, count(*) as count
from film
group by rental_duration
order by count desc;
/* WHERE AND LIMIT CLAUSE STATEMENT */
-- where and limit clause
-- where filter records to a specific condition
-- select from where
-- limit to select number of records

select title, rental_duration
from film
where rental_duration = 6  -- display only those who have rating 6
limit 5; -- returns top 5 only

select title, rental_duration
from film
where rental_duration != 6  -- display only those who not have rating 6
limit 5; -- returns top 5 only

select title, rental_duration
from film
where rental_duration < 6  -- display only those who have rating less than 6
limit 5; -- returns top 5 only

select rating, count(*) as count
from film
group by rating
order by count desc /* returns sorted values by rating in descending count */
limit 2/* returns top 2 values */
offset 1 /* returns top 2 values by skipping first */;

select rating, count(*) as count
from film
group by rating
order by count desc /* returns sorted values by rating in descending count */
limit 2,1 ; /* returns first value after skipping top 2 values :: returns 3rd highest in rating counts */
