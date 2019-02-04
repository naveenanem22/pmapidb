DROP TABLE IF EXISTS status;
CREATE TABLE status (
  sts_id INT(6) NOT NULL UNIQUE,
  sts_name VARCHAR(75) NOT NULL UNIQUE,
  sts_category VARCHAR(75) NOT NULL,
  CONSTRAINT pk_status PRIMARY KEY(sts_id)
);
