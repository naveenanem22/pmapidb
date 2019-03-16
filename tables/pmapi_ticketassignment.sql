DROP TABLE IF EXISTS ticketassignment;
CREATE TABLE ticketassignment (
    ta_id INT(6) NOT NULL UNIQUE,
    ta_tkt_id INT(6) NOT NULL,
	ta_assigned_to INT(6) NOT NULL,
	ta_created_date TIMESTAMP,	    
    CONSTRAINT pk_ticketassignment PRIMARY KEY (ta_id),
    CONSTRAINT fk_ta_tkt_id_ref_tkt_id FOREIGN KEY (ta_tkt_id)
        REFERENCES ticket (tkt_id),
	CONSTRAINT fk_ta_assigned_to_ref_u_id FOREIGN KEY (ta_assigned_to)
		REFERENCES user (u_id)
);