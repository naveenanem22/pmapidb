DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `edu_id` varchar(11) NOT NULL,
  `edu_empid` varchar(45) DEFAULT NULL,
  `edu_qualname` varchar(45) DEFAULT NULL,
  `edu_startdate` date DEFAULT NULL,
  `edu_enddate` date DEFAULT NULL,
  `edu_score` float DEFAULT NULL,
  `edu_scoreType` varchar(45) DEFAULT NULL,
  `edu_institution` varchar(45) DEFAULT NULL,
  `edu_specialization` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`edu_id`),
  KEY `fk_edu_empid_emp_id_idx` (`edu_empid`),
  CONSTRAINT `fk_edu_empid_emp_id` FOREIGN KEY (`edu_empid`) REFERENCES `employee` (`emp_id`)
);
