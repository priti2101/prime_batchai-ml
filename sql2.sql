SELECT age, max(followers)
FROM USER
GROUP BY age
HAVING max(followers) > 20
ORDER BY age DESC;


ALTER TABLE user
ADD COLUMN city VARCHAR(25) DEFAULT "DELHI";
ALTER TABLE user
DROP COLUMN age;
ALTER TABLE user
RENAME TO instauser;
SELECT * FROM instauser;
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE instauser
RENAME TO user;

ALTER TABLE user
CHANGE COLUMN followers subs INT DEFAULT 0;

INSERT INTO user
(id, name, email, following)
VALUES
(5, "ash", "ash@gmail.com", 56);
ALTER TABLE user
MODIFY subs INT DEFAULT 5;
SELECT * FROM user;

DROP TABLE post;
TRUNCATE TABLE user;

