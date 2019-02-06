DROP TABLE IF EXISTS department;
CREATE TABLE department (
  dept_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
  dept_name VARCHAR(75) NOT NULL UNIQUE,
  CONSTRAINT pk_department PRIMARY KEY(dept_id)
);
