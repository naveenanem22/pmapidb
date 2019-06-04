DROP TABLE IF EXISTS role;
CREATE TABLE role (
    role_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    role_name VARCHAR(20) NOT NULL,
	role_category VARCHAR(20) NOT NULL,
    CONSTRAINT pk_role PRIMARY KEY (role_id)
);