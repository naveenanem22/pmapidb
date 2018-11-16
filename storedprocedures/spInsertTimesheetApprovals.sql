DELIMITER $$
DROP PROCEDURE IF EXISTS spInsertTimesheetApprovals $$
CREATE PROCEDURE spInsertTimesheetApprovals(
IN in_tmsht_id_list VARCHAR(1000), 
IN in_mgr_emp_id_list VARCHAR(1000),
IN in_tmsht_id_count INT,
IN in_mgr_emp_id_count INT,
OUT out_result BOOLEAN
)
BLOCK1: BEGIN
-- Temporary variables for outer loop: tmsht_id_loop
DECLARE tmp_tmsht_id INT(6);
DECLARE tmp_result TEXT;
DECLARE tmsht_id_counter INT DEFAULT 0;

-- The following loops runs through all the timesheetids
tmsht_id_loop: LOOP
-- split the tmshtids list
SET tmsht_id_counter = tmsht_id_counter + 1;
SELECT fnStrSplit(in_tmsht_id_list, ',', tmsht_id_counter) INTO tmp_tmsht_id;
	
    BLOCK2 :BEGIN
    DECLARE mgr_emp_id_counter INT DEFAULT 0;
    DECLARE tmp_mgr_emp_id INT(6);
	
	-- The following loops runs through all the managerids for each timesheetid
	mgr_emp_id_loop: LOOP	
	SET mgr_emp_id_counter = mgr_emp_id_counter +1;
	SELECT fnStrSplit(in_mgr_emp_id_list, ',', mgr_emp_id_counter) INTO tmp_mgr_emp_id;
	INSERT INTO timesheetapproval (tsa_tmesht_id, tsa_approver_emp_id, tsa_status) VALUES (tmp_tmsht_id, tmp_mgr_emp_id, 'Pending');
    
	IF mgr_emp_id_counter = in_mgr_emp_id_count THEN
      LEAVE mgr_emp_id_loop;
	END IF;
	
	END LOOP mgr_emp_id_loop;
	END BLOCK2;


IF tmsht_id_counter = in_tmsht_id_count THEN
      LEAVE tmsht_id_loop;
   END IF;

END LOOP tmsht_id_loop;
SET out_result = 1;
END BLOCK1 $$
DELIMITER ;