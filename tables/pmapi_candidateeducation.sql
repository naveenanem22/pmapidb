DROP TABLE IF EXISTS candidateeducation;
CREATE TABLE candidateeducation (
	ce_cdt_id VARCHAR(10) NOT NULL,
    ce_qualification_name VARCHAR(50),
    ce_start_date DATE,
    ce_end_date DATE,
    ce_score FLOAT,
    ce_score_type VARCHAR(10),
    ce_institution VARCHAR(40),
    ce_specialization VARCHAR(40),
    CONSTRAINT pk_candidateeducation PRIMARY KEY (ce_cdt_id, ce_qualification_name, ce_start_date),
    CONSTRAINT fk_ce_cdt_id_ref_cdt_id FOREIGN KEY (ce_cdt_id) REFERENCES candidate(cdt_id)
);
