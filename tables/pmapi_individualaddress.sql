DROP TABLE IF EXISTS individualaddress;
CREATE TABLE individualaddress (
    ia_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    ia_street_name VARCHAR(45) NOT NULL,
    ia_building_number VARCHAR(45),
    ia_city VARCHAR(45),
    ia_state VARCHAR(45),
    ia_country VARCHAR(45),
    ia_postal_code INT(10),
    ia_addr_line_1 VARCHAR(120),
    ia_addr_line_2 VARCHAR(120),
    ia_addr_line_3 VARCHAR(120),
    ia_addr_type VARCHAR(45),
    CONSTRAINT pk_individualaddress PRIMARY KEY (ia_id)
);