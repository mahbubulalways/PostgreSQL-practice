CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25)
)

INSERT INTO users(username) VALUES('shahin_shahriar'),('tanvir_khan'),('sabbir_hasan'),('mursalin_shitol')

SELECT * FROM users

DROP TABLE users
-- * POST TABLE

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT,
    -- ON DELETE RESTRICT / ON DELETE NO ACTION (DEFAULT)
    -- ON DELETE SET NULL
    -- ON DELETE SET DEFAULT
    user_id INT REFERENCES users(id) ON DELETE CASCADE
)


INSERT INTO post( title, user_id) VALUES('Hello I am Shahin from Tangail', 1),('Hello I am Tanvir from Barisal', 2),('Hello I am Sabbir from Jamalpur', 3),('Hello I am Mursalin from Chuadanga',4)

DROP TABLE post

SELECT * FROM post

SELECT * FROM post WHERE user_id = 4

-- * INNER JOIN
SELECT post.*, users.* FROM post JOIN users On post.user_id = users.id

SELECT  post.title, users.username 
FROM post 
JOIN users ON post.user_id = users.id;

SELECT * FROM post as p INNER JOIN users as u ON u.id = p.user_id

-- * DELETING MANAGE FOREIGN KEY
DELETE FROM users WHERE id =2

-- 

INSERT INTO post( id,title, user_id) VALUES(9,'Hello I am Null', null)

SELECT * FROM post

-- * LEFT JOIN 

SELECT * FROM post as p LEFT JOIN users as u ON p.user_id= u.id 

SELECT * FROM post as p RIGHT JOIN users as u ON p.user_id= u.id 

-- * SWAP
SELECT * FROM users as p  LEFT JOIN  post as u ON p.id= u.user_id 

SELECT * FROM post as p  FULL OUTER JOIN  users as u ON p. user_id= u.id 