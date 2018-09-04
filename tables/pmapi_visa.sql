DROP TABLE IF EXISTS `visa`;
CREATE TABLE `visa` (
  `vsa_id` varchar(11) NOT NULL,
  `vsa_country` varchar(45) DEFAULT NULL,
  `vsa_type` varchar(45) DEFAULT NULL,
  `vsa_validtill` date DEFAULT NULL,
  `vsa_empid` varchar(45) DEFAULT NULL,
  `vsa_validfrom` date DEFAULT NULL,
  PRIMARY KEY (`vsa_id`),
  KEY `fk_vsa_empid_emp_id_idx` (`vsa_empid`),
  CONSTRAINT `fk_vsa_empid_emp_id` FOREIGN KEY (`vsa_empid`) REFERENCES `employee` (`emp_id`)
);
