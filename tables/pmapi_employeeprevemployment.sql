DROP TABLE IF EXISTS employeeprevemployment;
CREATE TABLE employeeprevemployment (
  epe_id INT(6) NOT NULL UNIQUE,
  epe_company_name VARCHAR(75),
  epe_emp_id INT(6),
  epe_total_experience_in_months INT(11),
  epe_start_date DATE,
  epe_end_date DATE,
  epe_relevant_experience_in_months INT(11),
  epe_designation VARCHAR(45),
  epe_remuneration DECIMAL(20,2),
  epe_nature_of_employment VARCHAR(45),
  epe_supervisor_name VARCHAR(45),
  epe_supervisor_designation VARCHAR(45),
  epe_reason_for_leaving VARCHAR(45),
  epe_supervisor_emailid VARCHAR(45),
  epe_employee_code VARCHAR(45),
  CONSTRAINT pk_employeeprevemployment PRIMARY KEY(epe_id),
  CONSTRAINT fk_epe_emp_id_ref_emp_id FOREIGN KEY(epe_emp_id) REFERENCES employee(emp_id),
  CONSTRAINT fk_epe_company_name_ref_comp_name FOREIGN KEY(epe_company_name) REFERENCES  company(comp_name)
);