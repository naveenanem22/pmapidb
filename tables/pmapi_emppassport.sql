DROP TABLE IF EXISTS `emppassport`;
CREATE TABLE `emppassport` (
  `epp_number` varchar(45) NOT NULL,
  `epp_dateofissue` date DEFAULT NULL,
  `epp_dateofexpiry` date DEFAULT NULL,
  `epp_empid` varchar(45) NOT NULL,
  PRIMARY KEY (`epp_empid`)
);
