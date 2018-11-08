DROP TABLE IF EXISTS timesheet;
CREATE TABLE timesheet (
	tmesht_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
	tmesht_tsk_id INT(6) NOT NULL,
	tmesht_emp_id INT(6) NOT NULL,
	tmesht_date DATE NOT NULL,
	tmesht_start_time TIME NOT NULL,
	tmesht_end_time TIME NOT NULL,
	tmesht_status VARCHAR(20) NOT NULL,
	CONSTRAINT pk_worksegment PRIMARY KEY (tmesht_id),
	CONSTRAINT fk_tmesht_emp_id_ref_emp_id FOREIGN KEY (tmesht_emp_id) REFERENCES employee(emp_id),
	CONSTRAINT fk_tmesht_tsk_id_ref_tsk_id FOREIGN KEY (tmesht_tsk_id) REFERENCES task(tsk_id)	
);