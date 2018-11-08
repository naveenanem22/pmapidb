DROP TABLE IF EXISTS timesheet;
CREATE TABLE timesheet (
	tmsht_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,	
	tmsht_emp_id INT(6) NOT NULL,
	tmsht_payroll_cycle_id INT(6) NOT NULL,
	CONSTRAINT pk_timesheet PRIMARY KEY (tmsht_id),
	CONSTRAINT fk_tmsht_emp_id_ref_emp_id FOREIGN KEY (tmsht_emp_id) REFERENCES employee(emp_id)
);