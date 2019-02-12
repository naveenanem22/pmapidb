DROP TABLE IF EXISTS priority;
CREATE TABLE priority (
  pty_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
  pty_name VARCHAR(75) NOT NULL UNIQUE,
  pty_category VARCHAR(20) NOT NULL,
  CONSTRAINT pk_priority PRIMARY KEY(pty_id)
);
