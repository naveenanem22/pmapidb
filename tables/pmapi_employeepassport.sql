DROP TABLE IF EXISTS employeepassport;
CREATE TABLE employeepassport (
  epp_id INT(6) NOT NULL UNIQUE,
  epp_number VARCHAR(45) NOT NULL,
  epp_date_of_issue DATE,
  epp_date_of_expiry DATE,
  epp_emp_id INT(6),
  CONSTRAINT pk_employeepassport PRIMARY KEY (epp_id),
  CONSTRAINT fk_epp_emp_id_ref_emp_id FOREIGN KEY (epp_emp_id) REFERENCES employee (emp_id)
);
