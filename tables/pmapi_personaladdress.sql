DROP TABLE IF EXISTS personaladdress;
CREATE TABLE personaladdress (
    paddr_id INT(6) NOT NULL UNIQUE,
    paddr_street_name VARCHAR(45) NOT NULL,
    paddr_building_number VARCHAR(45),
    paddr_city VARCHAR(45),
    paddr_state VARCHAR(45),
    paddr_country VARCHAR(45),
    paddr_postal_code INT(10),
    paddr_addr_line_1 VARCHAR(120),
    paddr_addr_line_2 VARCHAR(120),
    paddr_addr_line_3 VARCHAR(120),
    paddr_addr_type VARCHAR(45),
    CONSTRAINT pk_personaladdress PRIMARY KEY (paddr_id)
);