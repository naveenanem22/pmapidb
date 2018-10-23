DROP TABLE IF EXISTS candidate;
CREATE TABLE candidate (
    cdt_id VARCHAR(10) NOT NULL UNIQUE,
    cdt_candidate_id VARCHAR(10) NOT NULL UNIQUE,
    cdt_first_name VARCHAR(45) NOT NULL,
    cdt_last_name VARCHAR(45),
    cdt_email VARCHAR(45),
    cdt_passport VARCHAR(10),
    cdt_last_designation VARCHAR(45),
    cdt_date_of_birth DATE,
    cdt_gender VARCHAR(10),
    cdt_marital_status VARCHAR(15),
    cdt_created_date TIMESTAMP,
    cdt_updated_date TIMESTAMP,
    CONSTRAINT pk_candidate PRIMARY KEY (cdt_id)
);
