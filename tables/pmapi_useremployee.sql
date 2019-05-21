DROP TABLE IF EXISTS useremployee;
CREATE TABLE useremployee (
    ue_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    ue_u_id INT(6) NOT NULL UNIQUE,
	ue_emp_id INT(6) NOT NULL UNIQUE,
	ue_created_date TIMESTAMP,	    
	ue_updated_date TIMESTAMP,
    CONSTRAINT pk_useremployee PRIMARY KEY (ue_id),
    CONSTRAINT fk_ue_u_id_ref_u_id FOREIGN KEY (ue_u_id)
        REFERENCES user (u_id),
	CONSTRAINT fk_ue_emp_id_ref_emp_id FOREIGN KEY (ue_emp_id)
		REFERENCES employee (emp_id)
);