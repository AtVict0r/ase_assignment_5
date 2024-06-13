SELECT m.movie_name,
       d.first_name AS director_first_name,
       d.last_name AS director_last_name,
       a.first_name AS actor_first_name,
       a.last_name AS actor_last_name,
       COUNT(DISTINCT a.id) AS num_actors
FROM movies m
INNER JOIN movie_actors ma ON m.id = ma.movie_id
INNER JOIN actors a ON ma.actor_id = a.id
INNER JOIN directors d ON m.director_id = d.id
GROUP BY m.movie_name, d.first_name, d.last_name, a.first_name, a.last_name
ORDER BY m.movie_name, a.last_name;