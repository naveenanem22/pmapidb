DROP TABLE IF EXISTS company;
CREATE TABLE company (
  comp_id INT(6) NOT NULL UNIQUE,
  comp_name VARCHAR(75) NOT NULL,
  CONSTRAINT pk_company PRIMARY KEY(comp_id)
);
