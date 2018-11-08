DROP TABLE IF EXISTS timesheetapproval;
CREATE TABLE timesheetapproval (
	tsa_id INT(6) NOT NULL UNIQUE,
	tsa_tmsht_id INT(6) NOT NULL,
	tsa_payroll_cycle_id INT(6) NOT NULL,
	tsa_approver_emp_id INT(6) NOT NULL,
	tsa_submitted_timestamp TIMESTAMP,
	tsa_approved_timestamp TIMESTAMP,
	CONSTRAINT pk_timesheetapproval PRIMARY KEY (tsa_id),
	CONSTRAINT fk_tsa_tmsht_id_ref_tmsht_id FOREIGN KEY (tsa_tmsht_id) REFERENCES timesheet (tmsht_id),
	CONSTRAINT fk_tsa_approver_emp_id_ref_emp_id FOREIGN KEY (tsa_approver_emp_id) REFERENCES employee (emp_id)
);