-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT first_name,last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- 2 Wahlbergs

-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- 4802

-- 3. What film does the store have the most of? (search in inventory)

SELECT film_id, sum(film_id)
FROM inventory
GROUP BY film_id
ORDER BY film_id DESC;
-- 1000

-- 4. How many customers have the last name ‘William’?

SELECT first_name,last_name
FROM customer
WHERE last_name = 'William';
-- None 

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, SUM(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY staff_id DESC;
-- 2 sold the most 

-- 6. How many different district names are there?
SELECT COUNT(district)
FROM address;
-- 603

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(film_id), actor_id
FROM film_actor
GROUP BY actor_id
HAVING COUNT(film_id) >35;

-- I didnt understand this question so i just looked to see how many films each actor was in 
-- actor_id 107 did


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT first_name, last_name, COUNT('%es')
FROM customer
WHERE last_name LIKE '%es'
GROUP BY first_name, last_name;
-- 20 something, didnt know how count the where??


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id, amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id, amount
HAVING amount > 4.99;

--  I did see a column for how many times it got rented so I got confused with this one

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT COUNT(DISTINCT rating)
FROM film;
WHERE 
-- 5

SELECT title, rating, COUNT(rating)
FROM film
GROUP BY title, rating
-- could not figure out the second part to it 


