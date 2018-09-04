DROP TABLE IF EXISTS `empskill`;
CREATE TABLE `empskill` (
  `es_empid` varchar(45) NOT NULL,
  `es_sklid` varchar(45) NOT NULL,
  `es_experienceinmonths` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_empid`,`es_sklid`),
  KEY `fk_es_empid_emp_id_idx` (`es_empid`),
  KEY `fk_es_skillid_sk_id_idx` (`es_sklid`),
  CONSTRAINT `fk_es_empid_emp_id` FOREIGN KEY (`es_empid`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_es_skillid_skl_id` FOREIGN KEY (`es_sklid`) REFERENCES `skill` (`skl_id`)
);
