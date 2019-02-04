DROP TABLE IF EXISTS tickettype;
CREATE TABLE tickettype (
  tkttype_id INT(6) NOT NULL UNIQUE,
  tkttype_name VARCHAR(75) NOT NULL UNIQUE,
  CONSTRAINT pk_tickettype PRIMARY KEY(tkttype_id)
);
