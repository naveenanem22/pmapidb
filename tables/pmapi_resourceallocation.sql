DROP TABLE IF EXISTS resourceallocation;
CREATE TABLE resourceallocation (
    ra_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    ra_emp_id INT(6) NOT NULL,
	ra_tsk_id INT(6) NOT NULL,	
	ra_notes VARCHAR(1000),    
    CONSTRAINT pk_resourceallocation PRIMARY KEY (ra_id),
    CONSTRAINT fk_ra_emp_id_ref_emp_id FOREIGN KEY (ra_emp_id)
        REFERENCES employee (emp_id),
	CONSTRAINT fk_ra_tsk_id_ref_tsk_id FOREIGN KEY (ra_tsk_id)
		REFERENCES task (tsk_id)
);