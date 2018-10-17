DROP TABLE IF EXISTS jobpost;
CREATE TABLE jobpost (
    jp_id VARCHAR(10) NOT NULL,
    jp_job_title VARCHAR(45),
    jp_location VARCHAR(45),
    jp_roles TEXT,
    jp_number_of_vacancies INT(3),
    jp_hiring_manager_employee_id VARCHAR(10),
    jp_department_id VARCHAR(10),
    jp_overview TEXT,
    jp_responsibilities TEXT,
    jp_must_have_experience TEXT,
    jp_nice_to_have_experience TEXT,
    jp_key_skills TEXT,
    jp_desired_education TEXT,
    CONSTRAINT pk_jobpost PRIMARY KEY (jp_id),
    CONSTRAINT fk_jp_hiring_manager_employee_id_ref_employee_id FOREIGN KEY (jp_hiring_manager_employee_id)
        REFERENCES employee (emp_id)
);