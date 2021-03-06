DROP DATABASE IF EXISTS opensf;
CREATE DATABASE opensf;

DROP TABLE IF EXISTS opensf.budget;
CREATE TABLE opensf.budget (
  `Fiscal Year` INT(11) DEFAULT NULL,
  `Revenue or Spending` VARCHAR(255) DEFAULT NULL,
  `Related Gov't Unit` VARCHAR(255) DEFAULT NULL,
  `Organization Group Code` VARCHAR(255) DEFAULT NULL,
  `Organization Group` VARCHAR(255) DEFAULT NULL,
  `Department Code` VARCHAR(255) DEFAULT NULL,
  `Department` VARCHAR(255) DEFAULT NULL,
  `Program Code` VARCHAR(255) DEFAULT NULL,
  `Program` VARCHAR(255) DEFAULT NULL,
  `Character Code` VARCHAR(255) DEFAULT NULL,
  `Character` VARCHAR(255) DEFAULT NULL,
  `Object Code` VARCHAR(255) DEFAULT NULL,
  `Object` VARCHAR(255) DEFAULT NULL,
  `Sub-object Code` VARCHAR(255) DEFAULT NULL,
  `Sub-object` VARCHAR(255) DEFAULT NULL,
  `Fund Type Code` VARCHAR(255) DEFAULT NULL,
  `Fund Type` VARCHAR(255) DEFAULT NULL,
  `Fund Code` VARCHAR(255) DEFAULT NULL,
  `Fund` VARCHAR(255) DEFAULT NULL,
  `Fund Category Code` INT(11) DEFAULT NULL,
  `Fund Category` VARCHAR(255) DEFAULT NULL,
  `Amount` BIGINT(20) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;
ALTER TABLE opensf.budget ADD id INT PRIMARY KEY AUTO_INCREMENT;

LOAD DATA LOCAL INFILE '~/Downloads/Budget.csv'
  INTO TABLE opensf.budget
  FIELDS
    TERMINATED BY ','
    ENCLOSED BY '"'
  LINES TERMINATED BY '\n' -- mac-style line breaks
  IGNORE 1 LINES
;
