CREATE TABLE old_young (
    type VARCHAR(100) ,
    name VARCHAR(1000),
   birthday DATE
);
INSERT INTO old_young(type,name, birthday)
SELECT 'YOUNGEST', name ,birthday 
FROM worker
WHERE (birthday)  = (
      SELECT MAX (birthday) FROM worker)
UNION
SELECT 'OLDEST', name ,birthday
FROM worker
WHERE (birthday)  = (
      SELECT MIN (birthday) FROM worker)

--SELECT TABLE
SELECT*
FROM old_young