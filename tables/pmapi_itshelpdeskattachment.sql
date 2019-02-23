DROP TABLE IF EXISTS itshelpdeskattachment;
CREATE TABLE itshelpdeskattachment (
  ihda_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
  ihda_name VARCHAR(75) NOT NULL UNIQUE,
  CONSTRAINT pk_itshelpdeskattachment PRIMARY KEY(ihda_id)
);
