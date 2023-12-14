-- Q1: How many actors have the last name 'Wahlberg'? A1: 2
select first_name, last_name
from actor
where last_name = 'Wahlberg';

-- Q2: How many payments were made between 3.99 and 5.99? A2: 
select amount, count(amount)
from payment
where amount between 3.99 and 5.99
group by amount;

-- Q3: What film does the store have the most of (from inventory)? A3: 
select film_id, count(film_id)
from inventory
group by film_id 
order by count(film_id) desc, film_id desc;

-- Q4: How many customers have the last name 'William'? A4: 0
select count(last_name)
from customer
where last_name = 'William';

-- Q5: What store employee (ID) sold the most rentals? A5: 1
select staff_id, count(staff_id)
from rental
group by staff_id
order by count(staff_id) desc;

-- Q6: How many different district names are there? A6: 378
select count(distinct district) 
from address;

-- Q7: What film has the most actors in it? A7: 
select film_id 
from film_actor
group by film_id;5

-- Q8: From store_id 1 in customer table, how many customers have a last name ending with '-es'? A8: 13
select store_id, last_name
from customer
where store_id = 1 and last_name like '%es'
group by store_id, last_name;

-- Q9: How many payment amounts had a number of rentals greater than 250 for customer_ids between 380 and 430?
-- A9: 
select amount, count(distinct amount), customer_id
from payment
where customer_id between 380 and 430
group by amount, customer_id
having count(distinct amount) > 250;

-- Q10: Within the film table, how many rating categories are there? And what rating has the most movies total? 
-- A10: 5 categories, PG-13 has the most movies
select rating, count(rating)
from film
group by rating;

