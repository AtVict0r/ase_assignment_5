UPDATE directors
SET last_name = director_audit.old_last_name
FROM director_audit
WHERE directors.id = director_audit.director_id;

SELECT * FROM directors;
SELECT * FROM director_audit;