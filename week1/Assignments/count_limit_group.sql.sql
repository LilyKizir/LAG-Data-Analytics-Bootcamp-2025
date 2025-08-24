-- COUNT, LIMIT, GROUP BY WALKTHROUGH ASSIGNMENT
-- 1.
		SELECT rating, COUNT(*)
		FROM film
		GROUP BY rating;
-- 2.
		SELECT first_name, last_name
		FROM actor
		ORDER BY last_name ASC
		LIMIT 10;
-- 3.
		SELECT category_id, COUNT(*)
		AS film_count
		FROM film_category
		GROUP BY category_id
		ORDER BY film_count DESC
		LIMIT 1;

