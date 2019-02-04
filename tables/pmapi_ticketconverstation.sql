DROP TABLE IF EXISTS ticketconverstation;
CREATE TABLE ticketconverstation (
	tktconv_id INT(6) NOT NULL UNIQUE,
	tktconv_tkt_id INT(6) NOT NULL,
    tktconv_author_usr_id VARCHAR(30),
    tktconv_message VARCHAR(500),
    tktconv_comented_on TIMESTAMP,	
    CONSTRAINT pk_ticketconverstation PRIMARY KEY (tktconv_id),
    CONSTRAINT fk_tktconv_tkt_id_ref_tkt_id FOREIGN KEY (tktconv_tkt_id) REFERENCES ticket(tkt_id)
);
