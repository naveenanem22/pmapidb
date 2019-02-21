DROP TABLE IF EXISTS ticketconversation;
CREATE TABLE ticketconversation (
	tktconv_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
	tktconv_tkt_id INT(6) NOT NULL,
    tktconv_author INT(6) NOT NULL,
    tktconv_message VARCHAR(500),
    tktconv_commented_on TIMESTAMP,	
    CONSTRAINT pk_ticketconversation PRIMARY KEY (tktconv_id),
    CONSTRAINT fk_tktconv_tkt_id_ref_tkt_id FOREIGN KEY (tktconv_tkt_id) REFERENCES ticket(tkt_id),
	CONSTRAINT fk_tktconv_author_ref_u_id FOREIGN KEY (tktconv_author) REFERENCES user(u_id) 
);
