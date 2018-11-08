DROP TABLE IF EXISTS timesheetapproval;
CREATE TABLE timesheetapproval (
	tsa_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
	tsa_tmesht_id INT(6) NOT NULL,
	tsa_approver_emp_id INT(6) NOT NULL,
	tsa_status VARCHAR(20),
	CONSTRAINT pk_timesheetapproval PRIMARY KEY (tsa_id),
	CONSTRAINT fk_tsa_tmesht_id_ref_tmesht_id FOREIGN KEY (tsa_tmesht_id) REFERENCES timesheet(tmesht_id),
	CONSTRAINT fk_tsa_approver_emp_id_ref_emp_id FOREIGN KEY (tsa_approver_emp_id) REFERENCES employee(emp_id)
);