CREATE DATABASE IF NOT EXISTS home2;
use home2;
DROP TABLE IF EXISTS Sales;
CREATE TABLE IF NOT EXISTS Sales(
id INT PRIMARY KEY AUTO_INCREMENT,
Order_date date  NOT NULL,
Count_product INT check(Count_product >= 0) 
  
);
INSERT Sales (Order_date,
Count_product)
Values
('2000-10-01','136'),
('2001-11-12','56'),
('2002-12-03','339'),
('2022-06-14','1000'),
('2022-09-03','200');

select sales.*
from sales;

select 
	id as 'номер товара',
    CASE
	WHEN Count_product < '100' THEN "Малый заказ"
    WHEN Count_product BETWEEN 100 and 300 THEN "Cредний заказ"
    WHEN Count_product > '300' THEN "Большой заказ"
    END AS "тип товара"
    from sales;

DROP TABLE IF EXISTS Orders;
CREATE TABLE IF NOT EXISTS Orders(
`id` INT PRIMARY KEY AUTO_INCREMENT,
  `employee_id` double,
  `amount` double,
  `order_status` varchar(10));
 
  INSERT Orders(employee_id,amount,order_status)
  values
  ('16.396','8552.1','open'),
  ('14.396','3783','closed'),
  ('28.4','64.78','canseled');
  
  
  
select 
	id as 'номер товара',
    employee_id as 'номер доставщика',
    amount as 'количество',    
    CASE
	WHEN order_status = 'open' THEN "Order is in open state"
    WHEN order_status = 'closed' THEN "Order is closed"
    WHEN order_status ='canseled' THEN "Order is canseled"
    END AS "статус товара товара"
    from Orders;





    
    
  

  




