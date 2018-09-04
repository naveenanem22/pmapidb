DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` varchar(45) NOT NULL,
  `emp_firstname` varchar(45) DEFAULT NULL,
  `emp_lastname` varchar(45) DEFAULT NULL,
  `emp_gender` varchar(45) DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_maritalstatus` varchar(45) DEFAULT NULL,
  `emp_createddate` timestamp NULL DEFAULT NULL,
  `emp_updateddate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_id_UNIQUE` (`emp_id`)
);
