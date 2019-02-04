DROP TABLE IF EXISTS ticket;
CREATE TABLE ticket (
	tkt_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,	
	tkt_title VARCHAR(100) NOT NULL,
	tkt_description VARCHAR(2000),
	tkt_dept_id INT(6),
	tkt_pty_id INT(6) NOT NULL,
	tkt_tkttype_id INT(6) NOT NULL,
	tkt_svctype_id INT(6) NOT NULL,
	tkt_created_by VARCHAR(30) NOT NULL,
	tkt_sts_id INT(6) NOT NULL,
	tkt_created_date TIMESTAMP,
	tkt_updated_date TIMESTAMP,
	CONSTRAINT pk_ticket PRIMARY KEY (tkt_id),
	CONSTRAINT fk_tkt_dept_id_ref_dept_id FOREIGN KEY (tkt_dept_id) REFERENCES department(dept_id),
	CONSTRAINT fk_tkt_svctype_id_ref_svctype_id FOREIGN KEY (tkt_svctype_id) REFERENCES servicetype(svctype_id),
	CONSTRAINT fk_tkt_pty_id_ref_pty_id FOREIGN KEY (tkt_pty_id) REFERENCES priority(pty_id),
	CONSTRAINT fk_tkt_tkttype_id_ref_tkttype_id FOREIGN KEY (tkt_tkttype_id) REFERENCES tickettype(tkttype_id),
	CONSTRAINT fk_tkt_sts_id_ref_sts_id FOREIGN KEY (tkt_sts_id) REFERENCES status(sts_id)
);
