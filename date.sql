SHOW timezone

SELECT now()

CREATE TABLE timeZ (
ts TIMESTAMP without time zone,
tsz TIMESTAMP with time zone
)

INSERT INTO timez VALUES('2024-01-12 10:12:00','2024-01-12 10:12:00')

SELECT * FROM timez

SELECT CURRENT_DATE

SELECT now()::date

SELECT to_char(now()::date, 'mm-yyyy-ddd')

SELECT CURRENT_DATE - INTERVAL '1 year '

SELECT age(CURRENT_DATE , '2004-09-28')

SELECT * FROM student;

SELECT age(CURRENT_DATE, dateOfBirth) as age, * FROM student;

SELECT extract(year from '2025-9-10'::date)

SELECT '1'::BOOLEAN