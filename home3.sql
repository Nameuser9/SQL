CREATE DATABASE IF NOT EXISTS home3;
use home3;

DROP TABLE IF EXISTS staff; 
CREATE TABLE staff
(
	id INT PRIMARY KEY AUTO_INCREMENT, -- PRIMARY KEY  = NOT NULL UNUQIE
    firstname VARCHAR(45),
	lastname VARCHAR(45),
    post VARCHAR(45),
    seniority INT,
	salary DECIMAL(8, 2), 
    age INT
);
INSERT staff (firstname, lastname, post, seniority, salary, age)
VALUES
	 ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
	 ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
	 ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
	 ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
	 ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
	 ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
	 ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
	 ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
	 ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
	 ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
	 ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
	 ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
     
     select *
     from staff
     order by (salary) DESC;
     
     
     select *
     from staff
     order by (salary) ;
     
     select salary
     from staff
     order by (salary) DESC
     limit 5;
     
     select 
     SUM(salary) AS "Суммарная ЗП"
     from staff
     group by post;
     
      select 
     COUNT(salary) AS "Количество сотрудников по отделу"
     from staff
     where post = "Рабочий"
     having age between 24 and 49;
     
     select DISTINCT
     COUNT(post) as "Количество постов"
     from staff;
     
     select
     post
     from staff
     group by post
     having AVG(age) <= 30;
     
     