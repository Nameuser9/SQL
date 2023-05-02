CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;

-- Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов

create view cars_Viev as
select *
from cars
where cost < 25000;

-- 2.	Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 
alter view cars_Viev as
select *
from cars
where cost < 30000;

-- 3. 	Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”

create view cars_Viev2 as
select *
from cars
where name = "Skoda" or "Audi";


DROP TABLE IF EXISTS trains;
CREATE TABLE IF NOT EXISTS trains(
train_id INT PRIMARY KEY,
station varchar(20),
station_time time  
);
INSERT  trains(train_id,station,station_time)
values
('110','San Fransisco','10:00:00',
'110','Redwood City','10:54:00',
'110','Palo Alto','11:02:00',
'110','San Jose','12:35:00',
'120','San Fransisco','11:00:00',
'120','Palo Alto','12:49:00',
'120','San Jose','13:30:00');

SELECT train_id,
station,
station_time,
TIMEDIFF (station_time, lead)
over(PARTITION by train_id) as 'time_to_next_station'
from trains;

-- alter table trains чего-то через добавление не работает, подумал лучше будет сделать через таймдифф
-- add time_to_next_station time = TIMEDIFF (station_time, lead)  ;
