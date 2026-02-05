SELECT * FROM data;

DELIMITER $$
CREATE PROCEDURE check_balance(in acc_ic INT, OUT bal DECIMAL(10,2))
begin
SELECT balance INTO bal
from data
where account_ic = acc_ic;
end$$

DELIMITER ;
CALL check_balance(1, @balance);
select @balance;

DROP PROCEDURE IF EXISTS check_balance;