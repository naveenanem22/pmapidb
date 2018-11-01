DROP TABLE IF EXISTS employeeaddress;
CREATE TABLE employeeaddress (
    empaddr_id INT(6) NOT NULL UNIQUE,
    empaddr_paddr_id INT(6) NOT NULL,
	empaddr_emp_id INT(6) NOT NULL,	
    CONSTRAINT pk_employeeaddress PRIMARY KEY (empaddr_id),
    CONSTRAINT fk_empaddr_paddr_id_ref_paddr_id FOREIGN KEY (empaddr_paddr_id)
        REFERENCES personaladdress (paddr_id),
	CONSTRAINT fk_empaddr_emp_id_ref_emp_id FOREIGN KEY (empaddr_emp_id)
		REFERENCES employee (emp_id)
);