SELECT * FROM employees;

-- ADD column
ALTER TABLE employees
ADD COLUMN skill VARCHAR(25) NOT NULL DEFAULT 'java';
ALTER TABLE employees
ADD COLUMN age INT ;

--  insert
INSERT INTO
    employees (
        firstname,
        lastname,
        dept,
        email,
        salary,
        skill,
        hiredate
    )
VALUES (
        'sabbir',
        'Rahman',
        'CSE',
        'sabbir@hasan.com',
        25000,
        'java, c++',
        '2025-02-25'
    );

-- RENAME COL
ALTER TABLE employees RENAME COLUMN beton to salary;

-- CHANGE DATA TYPE

ALTER TABLE employees ALTER COLUMN firstname TYPE VARCHAR(25);

-- ADD CONSTRAINT
ALTER TABLE employees ALTER COLUMN age SET NOT NULL DEFAULT 25;



-- ADD CONSTRAINT
ALTER TABLE employees
ALTER COLUMN age SET NOT NULL,
ALTER COLUMN age SET DEFAULT 11;


-- DELETE COL
ALTER TABLE employees DROP age; 

-- ADD COLUMN
ALTER TABLE employees
ADD COLUMN user_name VARCHAR(50);

--  ADD CONSTRAIN
ALTER TABLE employees 
ADD CONSTRAINT unique_bank_db_username UNIQUE(user_name);