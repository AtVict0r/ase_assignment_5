DROP TABLE IF EXISTS directors CASCADE;
CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);

-- Insert Directors
INSERT INTO directors (first_name, last_name)
VALUES ('Steven', 'Spielberg'),
       ('Quentin', 'Tarantino'),
       ('Ang', 'Lee'),
       ('Wong', 'Kar-wai');

SELECT * FROM directors;