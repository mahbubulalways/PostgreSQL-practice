CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments (department_id),
    salary DECIMAL(10, 2) NOT NULL,
    hire_date Date NOT NULL
)

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
)

INSERT INTO
    departments (department_name)
VALUES ('Human Resources'),
    ('Finance'),
    ('Marketing'),
    ('Sales'),
    ('IT'),
    ('Customer Support'),
    ('Logistics'),
    ('Production'),
    ('Research & Development'),
    ('Legal');

INSERT INTO
    employees (
        employee_name,
        department_id,
        salary,
        hire_date
    )
VALUES (
        'Samuel Peterson',
        1,
        61000.00,
        '2020-06-18'
    ),
    (
        'Emily Johnson',
        2,
        78000.00,
        '2019-02-14'
    ),
    (
        'David Miller',
        3,
        53000.00,
        '2021-09-03'
    ),
    (
        'Sophia Martinez',
        4,
        69000.00,
        '2018-10-25'
    ),
    (
        'Daniel Wilson',
        5,
        75000.00,
        '2017-07-19'
    ),
    (
        'Olivia Brown',
        6,
        50000.00,
        '2022-04-11'
    ),
    (
        'Benjamin Hall',
        7,
        57000.00,
        '2021-12-01'
    ),
    (
        'Mia Scott',
        8,
        64000.00,
        '2019-05-06'
    ),
    (
        'Ethan Davis',
        9,
        82000.00,
        '2016-03-15'
    ),
    (
        'Ava White',
        10,
        93000.00,
        '2015-01-08'
    ),
    (
        'James Walker',
        4,
        62000.00,
        '2020-08-22'
    ),
    (
        'Charlotte Lewis',
        3,
        79000.00,
        '2019-04-10'
    ),
    (
        'Logan Harris',
        4,
        54000.00,
        '2021-10-18'
    ),
    (
        'Harper Allen',
        6,
        71000.00,
        '2018-11-28'
    ),
    (
        'Alexander Young',
        7,
        76000.00,
        '2017-09-07'
    ),
    (
        'Ella King',
        1,
        51000.00,
        '2022-05-19'
    ),
    (
        'Mason Wright',
        7,
        58000.00,
        '2021-01-22'
    ),
    (
        'Lily Robinson',
        9,
        65000.00,
        '2019-06-11'
    ),
    (
        'Jackson Perez',
        9,
        83000.00,
        '2016-08-30'
    ),
    (
        'Amelia Adams',
        10,
        94000.00,
        '2015-02-20'
    );

-- * HERE ARE OPERATIONS
--INNER JOIN DEPARTMENT AND EMPLOYEE
SELECT * FROM employees as e INNER JOIN departments as d ON e.department_id = d.department_id

SELECT * FROM employees
JOIN departments USING(department_id)

-- SHOW DEPARTMENT NAME WITH AVERAGE SALARY

SELECT  department_name, FLOOR(AVG(salary)) as average_salary, COUNT(*) as employees, MAX(salary) as max_salary, MIN(salary) as min_salary FROM employees JOIN departments ON employees.department_id=departments.department_id GROUP BY department_name

-- COUNT EMPLOYEE EACH DEPARTMENT
SELECT department_name, COUNT(*) as employees FROM employees JOIN departments USING(department_id) GROUP BY department_name

--  FIND THE DEPARTMENT NAME WITH THE HIGHEST AVG SALARY

SELECT department_name,  FLOOR(AVG(salary)) as avg_salary FROM employees JOIN departments USING(department_id)  GROUP BY department_name ORDER BY avg_salary DESC LIMIT 1

-- COUNT EMPLOYEES HIRE EACH YEAR
SELECT COUNT(*) as employees, extract(year from  hire_date::date) as hiring_year from employees GROUP BY hiring_year

-- NORMAL QUERY 
SELECT COUNT(*) as employee, hire_date from employees GROUP BY hire_date