DROP TABLE IF EXISTS `prevemployment`;
CREATE TABLE `prevemployment` (
  `pe_compname` varchar(45) NOT NULL,
  `pe_empid` varchar(45) NOT NULL,
  `pe_totalexperienceinmonths` int(11) DEFAULT NULL,
  `pe_startdate` date NOT NULL,
  `pe_enddate` date DEFAULT NULL,
  `pe_relevantexperienceinmonths` int(11) DEFAULT NULL,
  `pe_designation` varchar(45) DEFAULT NULL,
  `pe_remuneration` decimal(20,2) DEFAULT NULL,
  `pe_natureofemployment` varchar(45) DEFAULT NULL,
  `pe_supervisorname` varchar(45) DEFAULT NULL,
  `pe_supervisordesignation` varchar(45) DEFAULT NULL,
  `pe_reasonforleaving` varchar(45) DEFAULT NULL,
  `pe_supervisoremailid` varchar(45) DEFAULT NULL,
  `pe_employeecode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pe_compname`,`pe_empid`,`pe_startdate`),
  KEY `fk_pe_empid_emp_id_idx` (`pe_empid`),
  CONSTRAINT `fk_pe_compname_comp_name` FOREIGN KEY (`pe_compname`) REFERENCES `company` (`comp_name`),
  CONSTRAINT `fk_pe_empid_emp_id` FOREIGN KEY (`pe_empid`) REFERENCES `employee` (`emp_id`)
);
