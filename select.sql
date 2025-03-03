-- * CREATE TABLE
CREATE Table student (
    id SERIAL PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) ,
    age INT,
    grade VARCHAR(2),
    country VARCHAR(50),
    dateOfBirth DATE
)

--* INSERT DATA INTO TABLE
INSERT INTO student(firstName,lastName,email, age, grade, country, dateOfBirth) VALUES('Shahin', 'Mia', 'shahin@gmail.com', 32, 'A', 'Bangladesh', '2025-03-2'),
('Tanvir', 'Khan', 'tanvir@gmail.com', 25, 'B', 'Pakistan', '2025-03-4'),
('Mursalin', 'Hasan', 'mm@gmail.com', null, 'C', 'Bangladesh', '2025-03-9')


-- * GET ALL DATA FROM TABLE
SELECT * FROM student

-- * MAKE EMAIL NOT NULL
ALTER TABLE student 
ALTER email SET NOT NULL

-- * MAKE UNIQUE 
ALTER TABLE student 
ADD CONSTRAINT unique_email UNIQUE(email)

-- ******************* SELECT ACTIONS

SELECT * FROM student WHERE id = 1

SELECT country  FROM student WHERE id =1

SELECT country as desh, age as boyos FROM student

SELECT * FROM student ORDER BY country DESC 


-- * SELECT DISTINCT COUNTRY
SELECT DISTINCT country FROM student ORDER BY country DESC 


SELECT * FROM student WHERE country IN ('Pakistan', 'Bangladesh');

SELECT * FROM student WHERE (country = 'Pakistan' OR country = 'Bangladesh') AND age =25;


SELECT * FROM student WHERE  age >25;

SELECT * FROM student 
WHERE (country = 'Pakistan' OR country = 'Bangladesh') 
AND age  BETWEEN 20 AND 30;

SELECT SUM(age) AS summation FROM student;
  

 TRUNCATE TABLE student

--  * GET UPPERCASE

--* SCALER FUNC
SELECT upper(firstName) as first_name_uppercase, * FROM student;

SELECT upper(concat(firstName,' ', lastName)) as fullName, * FROM student;


-- * AGGREGATE FUNC
SELECT FLOOR(AVG(age)) FROM student;

SELECT max(age) FROM student;

SELECT max(length(firstName)) FROM student
-- * COUNT ROW

SELECT COUNT(*)  FROM student

-- * USING NOT

SELECT * FROM student WHERE NOT country = 'Bangladesh'

-- *NULL

SELECT * FROM student WHERE age IS NOT NULL

SELECT  COALESCE(age, 0) FROM student

-- * LIKE
--  _ means one character  like __a%
SELECT firstName FROM student WHERE firstName Like '__a%'

-- ILIKE IS CASE IN SENSITIVE
SELECT firstName FROM student WHERE firstName ILIKE 's%'

-- * LIMIT

SELECT * FROM student  ORDER BY age   DESC LIMIT(2) OFFSET(1)

SELECT COUNT(*) AS total_rows FROM student;


-- * UPDATE


UPDATE student SET age = 200 WHERE id=10