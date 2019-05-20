DROP TABLE IF EXISTS userrole;
CREATE TABLE userrole (
    ur_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    ur_u_id INT(6) NOT NULL,
	ur_role_id INT(6) NOT NULL,
	ur_created_date TIMESTAMP,	    
	ur_updated_date TIMESTAMP,
    CONSTRAINT pk_userrole PRIMARY KEY (ur_id),
    CONSTRAINT fk_ur_u_id_ref_u_id FOREIGN KEY (ur_u_id)
        REFERENCES user (u_id),
	CONSTRAINT fk_ur_role_id_ref_role_id FOREIGN KEY (ur_role_id)
		REFERENCES role (role_id)
);