SELECT country, COUNT(*) FROM student GROUP BY country

SELECT country , FLOOR( avg(age)) as avg_age, COUNT(*) as total_user FROM student GROUP BY  country HAVING avg(age) >25

SELECT country , max(age), COUNT(*) as total_user FROM student GROUP BY country  


SELECT country, avg(age) FROM student GROUP BY country HAVING avg(age) BETWEEN 20 AND 30

SELECT extract(day from dateOfBirth::date) as birth_year, count(*) as student FROM student GROUP BY birth_year 