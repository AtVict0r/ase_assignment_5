DROP TABLE IF EXISTS movie_actors CASCADE;
CREATE TABLE movie_actors (
  movie_id INTEGER REFERENCES movies(id),
  actor_id INTEGER REFERENCES actors(id),
  PRIMARY KEY (movie_id, actor_id)
);

-- Link Movies with Actors (Sample)
INSERT INTO movie_actors (movie_id, actor_id)
VALUES (1, 1), -- The Shawshank Redemption - Leonardo DiCaprio
       (1, 2), -- The Shawshank Redemption - Tom Hanks
       (2, 1), -- Pulp Fiction - Leonardo DiCaprio
       (2, 3), -- Pulp Fiction - Brad Pitt
       (3, 2), -- Crouching Tiger, Hidden Dragon - Tom Hanks  (This is for demonstration, 
                                                        -- unlikely casting)
       (4, 4), -- In the Mood for Love - Tony Leung Chiu-wai
       (4, 5);  -- In the Mood for Love - Chow Yun-fat

SELECT * FROM movie_actors;