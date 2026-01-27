
CREATE DATABASE INSTAGRAM;
USE INSTAGRAM;

CREATE TABLE user (
id INT,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13),
PRIMARY KEY (id)
);

INSERT INTO user
(id, age, name, email, followers, following)
VALUES
(1,14,"ADAM", "adam@uartgmail.com", 24,23),
(2, 23, "bob", "bob@gmail.com", 43, 93),
(3, 42, "casey", "casey@gmail.com", 52,53),
(4, 64, "dam", "dam@gmail.com", 54,32);
INSERT INTO user
(id, age, name, email, followers, following)

CREATE TABLE post(
id INT,
content VARCHAR(100),
user_id INT,
FOREIGN KEY (user_id) REFERENCES user(id)
);

SELECT MIN(age)
FROM USER;



