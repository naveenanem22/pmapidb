DROP TABLE IF EXISTS tktconvattachment;
CREATE TABLE tktconvattachment (
    tha_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    tha_tktconv_id INT(6) NOT NULL,
	tha_ihda_id INT(6) NOT NULL,
    CONSTRAINT pk_tktconvattachment PRIMARY KEY (tha_id),
    CONSTRAINT fk_tha_tktconv_id_ref_tktconv_id FOREIGN KEY (tha_tktconv_id)
        REFERENCES ticketconversation (tktconv_id),
	CONSTRAINT fk_tha_ihda_id_ref_ihda_id FOREIGN KEY (tha_ihda_id)
		REFERENCES itshelpdeskattachment (ihda_id)
);