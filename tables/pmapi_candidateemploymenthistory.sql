DROP TABLE IF EXISTS candidateemploymenthistory;
CREATE TABLE candidateemploymenthistory(
	  ceh_cdt_id VARCHAR(10) NOT NULL,
    ceh_company_name VARCHAR(45),
    ceh_total_experience_in_months INT(11),
    ceh_start_date DATE,
    ceh_end_date DATE,
    ceh_relevant_experience_in_months INT(11),
    ceh_designation VARCHAR(10),
    ceh_remuneration DECIMAL(10,2),
    ceh_nature_of_employment VARCHAR(10),
    ceh_reason_for_leaving VARCHAR(100),
    ceh_employee_code VARCHAR(10),
    CONSTRAINT pk_candidateemploymenthistory PRIMARY KEY(ceh_cdt_id, ceh_company_name, ceh_start_date),
    CONSTRAINT fk_ceh_cdt_id_ref_cdt_id FOREIGN KEY(ceh_cdt_id) REFERENCES candidate(cdt_id)
    );
