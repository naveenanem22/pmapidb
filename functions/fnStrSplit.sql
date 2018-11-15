DELIMITER $$

DROP FUNCTION IF EXISTS fnStrSplit $$

CREATE 

FUNCTION fnStrSplit(x VARCHAR(255), delim VARCHAR(12), pos int) 
  RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
   RETURN replace(substring(substring_index(x, delim, pos), 
      length(substring_index(x, delim, pos - 1)) + 1), delim, '');
	
-- end the stored function code block
END $$

DELIMITER ;