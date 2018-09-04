DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `skl_id` varchar(11) NOT NULL,
  `skl_name` varchar(45) DEFAULT NULL,
  `skl_desc` varchar(45) DEFAULT NULL,
  `skl_category` varchar(45) DEFAULT NULL,
  `skl_createddate` date DEFAULT NULL,
  `skl_modifieddate` date DEFAULT NULL,
  `skl_deleted` binary(1) DEFAULT NULL,
  PRIMARY KEY (`skl_id`)
);
