DROP TABLE IF EXISTS director_audit CASCADE;
DROP FUNCTION IF EXISTS update_director_audit CASCADE;
CREATE TABLE director_audit (
  id SERIAL PRIMARY KEY,
  director_id INTEGER REFERENCES directors(id),
  old_last_name VARCHAR(50) NOT NULL,
  update_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE FUNCTION update_director_audit() RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO director_audit (director_id, old_last_name, update_time)
  VALUES (OLD.id, OLD.last_name, CURRENT_TIMESTAMP);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_director_audit_trigger
AFTER UPDATE ON directors FOR EACH ROW
EXECUTE PROCEDURE update_director_audit();

UPDATE directors
SET last_name = 'Smith'
WHERE id = 1;

UPDATE directors
SET last_name = 'Lin'
WHERE id = 3;

SELECT * FROM director_audit;
SELECT * FROM directors;