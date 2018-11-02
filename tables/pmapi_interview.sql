DROP TABLE IF EXISTS interview;
CREATE TABLE interview (
	intvw_id INT(6) NOT NULL UNIQUE,
	intvw_jc_id INT(6) NOT NULL,
    intvw_starttime_of_interview TIMESTAMP,
    intvw_endtime_of_interview TIMESTAMP,
    intvw_level_of_interview VARCHAR(15) NOT NULL,
    intvw_type_of_inteview VARCHAR(15) NOT NULL,
	intvw_interview_status VARCHAR(15) NOT NULL,	
	intvw_notes VARCHAR(500) NOT NULL,
    CONSTRAINT pk_interview PRIMARY KEY (intvw_id),	
    CONSTRAINT fk_intvw_jc_id_ref_jc_id FOREIGN KEY (intvw_jc_id) REFERENCES jobcandidate(jc_id)
);