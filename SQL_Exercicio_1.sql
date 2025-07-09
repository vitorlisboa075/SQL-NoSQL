-- 1.A
SELECT f.title AS Filme, c.name AS Categoria
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
ORDER BY f.title;

-- 1.B
SELECT a.first_name, a.last_name, COUNT(fa.film_id) AS total_filmes
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY total_filmes DESC;

-- 1.C
SELECT a.first_name, a.last_name, COUNT(f.film_id) AS total_filmes
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.length > 120
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY total_filmes DESC;
