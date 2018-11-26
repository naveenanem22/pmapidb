DROP TABLE IF EXISTS project;
CREATE TABLE project (
    prj_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    prj_name VARCHAR(100) NOT NULL,
    prj_project_id VARCHAR(100),
    prj_service_type VARCHAR(45),
    prj_description VARCHAR(2000),
    prj_planned_start_date DATE,
    prj_planned_end_date DATE,
    prj_actual_start_date DATE,
    prj_actual_end_date DATE,
	prj_created_date TIMESTAMP,
	prj_updated_date TIMESTAMP,  
	prj_status VARCHAR(20),
	prj_cust_id INT(6),
	prj_notes VARCHAR(2000),
    CONSTRAINT pk_project PRIMARY KEY (prj_id),
	CONSTRAINT fk_prj_cust_id_ref_cust_id FOREIGN KEY(prj_cust_id) customer (cust_id)
	
);