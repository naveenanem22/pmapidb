DROP TABLE IF EXISTS task;
CREATE TABLE task (
	tsk_id INT(6) NOT NULL UNIQUE,
	tsk_prj_id INT(6) NOT NULL,
	tsk_name VARCHAR(100) NOT NULL,
	tsk_description VARCHAR(2000),
	CONSTRAINT pk_task PRIMARY KEY (tsk_id),
	CONSTRAINT fk_tsk_prj_id_ref_prj_id FOREIGN KEY (tsk_prj_id) REFERENCES project(prj_id)
);