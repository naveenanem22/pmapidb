DROP TABLE IF EXISTS skill;
CREATE TABLE skill (
  skl_id INT(6) NOT NULL UNIQUE,
  skl_name VARCHAR(45),
  skl_desc VARCHAR(45),
  skl_category VARCHAR(45),
  skl_createddate DATE,
  skl_modifieddate DATE,
  skl_deleted BINARY(1),
  CONSTRAINT pk_skill PRIMARY KEY (skl_id)
);
