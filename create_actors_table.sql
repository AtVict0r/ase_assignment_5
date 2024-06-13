DROP TABLE IF EXISTS actors CASCADE;
CREATE TABLE actors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

INSERT INTO actors (first_name, last_name)
VALUES ('Leonardo', 'DiCaprio'), 
        ('Tom', 'Hanks'),
       ('Brad', 'Pitt'), 
       ('Uma', 'Thurman'),
       ('Chow', 'Yun-fat'), 
       ('Tony Leung', 'Chiu-wai');

SELECT * FROM actors;