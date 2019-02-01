DROP TABLE IF EXISTS servicetype;
CREATE TABLE servicetype (
  svctype_id INT(6) NOT NULL UNIQUE,
  svctype_name VARCHAR(75) NOT NULL UNIQUE,
  CONSTRAINT pk_servicetype PRIMARY KEY(svctype_id)
);
