DROP TABLE IF EXISTS worksegment;
CREATE TABLE worksegment (
	ws_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
	ws_prj_id INT(6) NOT NULL,
	ws_emp_id INT(6) NOT NULL,
	ws_date DATE NOT NULL,
	ws_start_time TIME NOT NULL,
	ws_end_time TIME NOT NULL,
	CONSTRAINT pk_worksegment PRIMARY KEY (ws_id),
	CONSTRAINT fk_ws_prj_id_ref_prj_id FOREIGN KEY (ws_prj_id) REFERENCES project(prj_id),
	CONSTRAINT fk_ws_emp_id_ref_emp_id FOREIGN KEY (ws_emp_id) REFERENCES employee(emp_id)	
);