CREATE TABLE data(
account_ic INT PRIMARY KEY,
name VARCHAR(50),
balance DECIMAL(10,2),
branch VARCHAR(50)
);

INSERT INTO data VALUES
(1, 'Adam', 500.00, 'MUMBAI'),
(2,'Bob', 300.00, 'DELHI'),
(3,'Charlie', 1000.00, 'BANGALORE'),
(4,'DAVID', 700.00, 'NOIDA');

SELECT * FROM data;

CREATE INDEX idx_branch ON data(branch);
SHOW INDEX FROM data;

SELECT * 
FROM data
WHERE branch = "MUMBAI";

CREATE INDEX idx2 ON data(branch, balance);
DROP INDEX idx2 ON data;