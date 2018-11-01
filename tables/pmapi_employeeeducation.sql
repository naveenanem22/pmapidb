DROP TABLE IF EXISTS employeeeducation;
CREATE TABLE employeeeducation (
  ee_id VARCHAR(11) NOT NULL UNIQUE,
  ee_emp_id VARCHAR(45),
  ee_qualname VARCHAR(45),
  ee_start_date DATE,
  ee_end_date DATE,
  ee_score FLOAT,
  ee_score_type VARCHAR(45),
  ee_institution VARCHAR(45),
  ee_specialization VARCHAR(45),
  CONSTRAINT pk_employeeeducation PRIMARY KEY (ee_id),  
  CONSTRAINT fk_ee_emp_id_ref_emp_id FOREIGN KEY (ee_emp_id) REFERENCES employee (emp_id)
);
