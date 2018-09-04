DROP TABLE IF EXISTS `empaddress`;
CREATE TABLE `empaddress` (
  `ea_empid` varchar(45) NOT NULL,
  `ea_city` varchar(45) DEFAULT NULL,
  `ea_country` varchar(45) DEFAULT NULL,
  `ea_state` varchar(45) DEFAULT NULL,
  `ea_pincode` int(10) DEFAULT NULL,
  `ea_street` varchar(45) DEFAULT NULL,
  `ea_addrline1` varchar(100) DEFAULT NULL,
  `ea_addrline2` varchar(100) DEFAULT NULL,
  `ea_type` varchar(45) NOT NULL,
  PRIMARY KEY (`ea_empid`,`ea_type`),
  CONSTRAINT `fk_ea_empid_emp_id` FOREIGN KEY (`ea_empid`) REFERENCES `employee` (`emp_id`)
);
