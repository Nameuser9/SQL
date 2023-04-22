CREATE DATABASE IF NOT EXISTS homework;
use homework;
DROP TABLE IF EXISTS info;
CREATE TABLE IF NOT EXISTS info(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` varchar (15)  NOT NULL,
 `age` INT check(`age` >= 0) 
  
);
alter table info
add adress varchar(20)

