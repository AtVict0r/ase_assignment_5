DROP TABLE IF EXISTS movies CASCADE;
CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  movie_name VARCHAR(255) NOT NULL,
  movie_lang VARCHAR(50) NOT NULL,
  movie_length INTEGER,
  director_id INTEGER REFERENCES directors(id)
);

-- Insert Movies (linking with Directors)
INSERT INTO movies (movie_name, movie_lang, movie_length, director_id)
VALUES ('The Shawshank Redemption', 'English', 142, 1),
       ('Pulp Fiction', 'English', 154, 2),
       ('Crouching Tiger, Hidden Dragon', 'Mandarin', 125, 3),
       ('In the Mood for Love', 'Cantonese', 94, 4);

SELECT * FROM movies;