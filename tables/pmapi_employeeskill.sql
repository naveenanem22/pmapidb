DROP TABLE IF EXISTS employeeskill;
CREATE TABLE employeeskill (
  es_id	INT(6) NOT NULL UNIQUE,
  es_emp_id INT(6),
  es_skl_id INT(45),
  es_experience_in_months int(11),
  CONSTRAINT pk_employeeskill PRIMARY KEY (es_id),  
  CONSTRAINT fk_es_emp_id_ref_emp_id FOREIGN KEY (es_emp_id) REFERENCES employee (emp_id),
  CONSTRAINT fk_es_skl_id_ref_skl_id FOREIGN KEY (es_skl_id) REFERENCES skill (skl_id)
);
