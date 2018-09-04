DROP TABLE IF EXISTS `emppassport`;
CREATE TABLE `emppassport` (
  `epp_number` varchar(45) NOT NULL,
  `epp_dateofissue` date DEFAULT NULL,
  `epp_dateofexpiry` date DEFAULT NULL,
  `epp_empid` varchar(45) NOT NULL,
  PRIMARY KEY (`epp_empid`),
  CONSTRAINT `fk_epp_empid_emp_id` FOREIGN KEY (`epp_empid`) REFERENCES `employee` (`emp_id`)
);
