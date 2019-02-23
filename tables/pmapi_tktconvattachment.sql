DROP TABLE IF EXISTS tktconvattachment;
CREATE TABLE tktconvattachment (
    tca_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    tca_tktconv_id INT(6) NOT NULL,
	tca_ihda_id INT(6) NOT NULL,
    CONSTRAINT pk_tktconvattachment PRIMARY KEY (tca_id),
    CONSTRAINT fk_tca_tktconv_id_ref_tktconv_id FOREIGN KEY (tca_tktconv_id)
        REFERENCES ticketconversation (tktconv_id),
	CONSTRAINT fk_tca_ihda_id_ref_ihda_id FOREIGN KEY (tca_ihda_id)
		REFERENCES itshelpdeskattachment (ihda_id)
);