DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
  emp_id int(6) NOT NULL UNIQUE,
  emp_firstname varchar(45) DEFAULT NULL,
  emp_lastname varchar(45) DEFAULT NULL,
  emp_gender varchar(45) DEFAULT NULL,
  emp_dob date DEFAULT NULL,
  emp_maritalstatus varchar(45) DEFAULT NULL,
  emp_createddate timestamp NULL DEFAULT NULL,
  emp_updateddate timestamp NULL DEFAULT NULL,
  CONSTRAINT pk_employee PRIMARY KEY (emp_id)
);
