-- 2.A
SELECT COUNT(f.film_id) AS total_filmes
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;

-- 2.B
SELECT SUM(total_filmes) AS total_filmes_geral
FROM (
    SELECT COUNT(fa.film_id) AS total_filmes
    FROM actor a
    JOIN film_actor fa ON a.actor_id = fa.actor_id
    GROUP BY a.actor_id
) AS subquery;

-- 2.C
SELECT COUNT(DISTINCT a.actor_id) AS total_atores_2h
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.length > 120;