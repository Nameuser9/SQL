CREATE DATABASE IF NOT EXISTS home1;
use home1;
CREATE TABLE IF NOT EXISTS PHONES(
id_mobile_phone INT PRIMARY KEY AUTO_INCREMENT,
models_mobile_phones varchar(45) NOT NULL,
manufacturers_mobile_phones varchar(45) NOT NULL,
prices_mobile_phones decimal(10,0) DEFAULT NULL,
  quantity_mobile_phones int NOT NULL
);
INSERT PHONES (models_mobile_phones,
manufacturers_mobile_phones,
prices_mobile_phones,
quantity_mobile_phones)
VALUES
('Iphone 10 ','Apple','10 ','10'),
('Samsung Galaxy A7','Samsung','8','1'),
('Xiaomi Redme Note 5', 'Xiaomi','5','3'),
('Huawei 2','Huawei','6','3'),
('Samsung Flip','Samsung','15','10'),
('Googole pixel 3','Google','13','2');

SELECT PHONES.*
FROM PHONES;



select PHONES.*
from PHONES
where quantity_mobile_phones > 2;

select PHONES.*
from PHONES
where manufacturers_mobile_phones = 'Samsung';