DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    cust_id INT(6) NOT NULL UNIQUE AUTO_INCREMENT,
    cust_name VARCHAR(100) NOT NULL,
	cust_customer_id VARCHAR(100) NOT NULL,
    cust_service_type VARCHAR(45),
    cust_description VARCHAR(2000),
    cust_planned_start_date DATE,
    cust_planned_end_date DATE,
    cust_actual_start_date DATE,
    cust_actual_end_date DATE,
	cust_created_date TIMESTAMP,
	cust_updated_date TIMESTAMP,  
	cust_status VARCHAR(20),
    CONSTRAINT pk_customer PRIMARY KEY (cust_id)
);