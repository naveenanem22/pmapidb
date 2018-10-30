DROP TABLE IF EXISTS jobcandidate;
CREATE TABLE jobcandidate (
    jc_id INT(6) NOT NULL UNIQUE,
    jc_jp_id INT(6) NOT NULL,
	jc_cdt_id INT(6) NOT NULL,
	jc_stage VARCHAR(20) NOT NULL,
	jc_notes VARCHAR(100),    
    CONSTRAINT pk_jobcandidate PRIMARY KEY (jc_id),
    CONSTRAINT fk_jc_jp_id_ref_jp_id FOREIGN KEY (jc_jp_id)
        REFERENCES jobpost (jp_id),
	CONSTRAINT fk_jc_cdt_id_ref_cdt_id FOREIGN KEY (jc_cdt_id)
		REFERENCES candidate (cdt_id)
);