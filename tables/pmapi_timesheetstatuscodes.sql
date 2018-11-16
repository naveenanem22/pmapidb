DROP TABLE IF EXISTS timesheetstatuscodes;
CREATE TABLE timesheetstatuscodes (
  tssc_code INT(2) NOT NULL UNIQUE,
  tssc_name VARCHAR(45),
  tssc_desc VARCHAR(45),
  CONSTRAINT pk_timesheetstatuscodes PRIMARY KEY (tssc_code)
);
