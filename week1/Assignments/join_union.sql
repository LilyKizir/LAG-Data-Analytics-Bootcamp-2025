-- JOINS AND UNIONS WALKTHROUGH
-- 1.
		SELECT DISTINCT a.first_name, a.last_name
		FROM actor a
		JOIN film_actor fa ON a.actor_id = fa.actor_id
		JOIN film f ON fa.film_id = f.film_id
		JOIN film_category fc ON f.film_id = fc.film_id
		JOIN category c ON fc.category_id = c.category_id
		WHERE c.name = 'Comedy';
		-- table actor contains a table of actor names
		-- table film contains a table of films
		-- table film_actor contains records that match actor_id to film_id
		-- table category contains a table of categories
		-- table film_category contains records that map films to categories by id

-- 2.
		SELECT f.title, l.name AS film_language
		FROM film f
		JOIN language l ON f.language_id = l.language_id
		ORDER BY f.title;

		-- inner join on film and language table, returning records of films whos language matches a known language in the language table

-- 3.
		SELECT first_name, last_name
		FROM customer
		UNION
		SELECT first_name, last_name
		FROM staff;

		-- Combine staff and customer lists, removing duplicates of staff who are also customers.

-- 4.
		SELECT f.title, STRING_AGG(a.first_name||' '||a.last_name,', ') AS actors
		FROM film f
		JOIN film_actor fa ON f.film_id = fa.film_id
		JOIN actor a ON fa.actor_id = a.actor_id
		GROUP BY f.title;
		-- combine film and actor table through the film_actor table, then aggregating the names of the actors in a comma seperated list for each movie title.

-- 5.
		SELECT DISTINCT c.first_name, c.last_name
		FROM customer c
		JOIN rental r ON c.customer_id = r.customer_id
		JOIN inventory i ON r.inventory_id = i.inventory_id
		JOIN film f ON i.film_id = f.film_id
		WHERE f.title = 'Academy Dinosaur';
		-- select customers who rented a specfic film

-- 6.
		SELECT f.title
		FROM film f
		JOIN film_category fc ON f.film_id = fc.film_id
		JOIN category c ON fc.category_id = c.category_id
		WHERE c.name = 'Comedy'
		UNION
		SELECT f.title
		FROM film f
		JOIN film_category fc ON f.film_id = fc.film_id
		JOIN category c ON fc.category_id = c.category_id
		WHERE c.name = 'Action';
		-- creates a mixed list of comedy and action movie titles, removing dupilcates of films that appear in both aka action comedies

-- 7.
		SELECT a.first_name, a.last_name
		FROM actor a
		LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
		WHERE fa.film_id IS NULL;
		-- find actors who have not been correctly linked to any film in the film_actor table

-- 8.
		SELECT l.name AS language, 
		COUNT(f.film_id) AS number_of_films
		FROM film f
		JOIN language l ON f.language_id = l.language_id
		GROUP BY l.name;
		-- find all possible language options, and the number of films for each language
