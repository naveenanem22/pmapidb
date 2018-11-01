DROP TABLE IF EXISTS employeevisa;
CREATE TABLE employeevisa (
  empvsa_id INT(6) NOT NULL UNIQUE,  
  empvsa_country VARCHAR(45),
  empvsa_type VARCHAR(45),
  empvsa_valid_till DATE,
  empvsa_emp_id INT(6),
  empvsa_valid_from DATE,  
  CONSTRAINT pk_employeevisa PRIMARY KEY (empvsa_id),
  CONSTRAINT fk_empvsa_emp_id_ref_emp_id FOREIGN KEY (empvsa_emp_id) REFERENCES employee (emp_id)
);
