CREATE DATABASE yandex_taxi;

CREATE TABLE cars(
    id BIGSERIAL PRIMARY KEY,
    made_by VARCHAR(50),
    model VARCHAR(50),
    toplivo VARCHAR(50),
    engine_value VARCHAR(50),
    korobka VARCHAR(50),
    date DATE,
    color VARCHAR(50)
);

CREATE TABLE drivers(
    name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_byrth DATE,
    staj integer,
    gender VARCHAR(50),
    id_car integer REFERENCES cars(id)
);

CREATE TABLE call_centr(
    name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_byrth DATE,
    gender VARCHAR(50)
);



INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Toyota', 'camry', 'бензин', '2', 'automatic', '2020-01-19', 'black');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Toyota', 'camry', 'бензин', '3', 'automatic', '2018-11-29', 'black');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Toyota', 'camry', 'бензин', '2', 'automatic', '2019-10-01', 'white');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Nissan', 'GTR', 'бензин', '3', 'automatic', '2017-10-01', 'green');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Nissan', 'Skyline', 'бензин', '2', 'mechanic', '2000-10-01', 'blue');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Nissan', 'Silvia', 'бензин', '2', 'mechanic', '2002-09-12', 'purple');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('BMW', 'M5', 'бензин', '4', 'automatic', '2021-09-12', 'black');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('BMW', 'M3', 'бензин', '4', 'automatic', '2019-11-20', 'grey');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Audi', 'RS6', 'бензин', '3', 'automatic', '2020-11-10', 'grey');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Audi', 'RS6', 'бензин', '3', 'automatic', '2020-11-10', 'grey');
INSERT INTO cars(made_by, model, toplivo, engine_value, korobka, date, color) VALUES ('Audi', 'e-tron', 'electro', '400', 'automatic', '2021-11-10', 'blue');



INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Bob', 'Alexandrow', '2000-12-01', '3', 'male','6');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Jhon', 'Gaspadarov', '2000-10-20', '3', 'male','1');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Gaster', 'Larkov', '2000-01-18', '3', 'male','2');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Arseniy', 'Trinozhenko', '2000-08-28', '3', 'male','3');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Alexander', 'Kostelev', '2000-02-01', '3', 'male','4');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Grame', 'Bladarov', '2000-02-23', '3', 'male','5');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Kuma', 'Aitishnikov', '2005-06-11', '4', 'male','7');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Thorin', 'Gamarov', '2000-04-20', '4', 'male','8');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Examer', 'Lkadov', '2000-12-20', '2', 'male','9');
INSERT INTO drivers(name, last_name, date_of_byrth, staj, gender, id_car) VALUES ('Artem', 'Janeshov', '2000-03-20', '1', 'male','10');



insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('kostya', 'gladov', '2000-12-24', 'male');
insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('vlad', 'kradlov', '2000-12-10', 'male');
insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('slam', 'grilov', '2000-11-10', 'male');
insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('Carl', 'Jhonson', '2001-11-10', 'male');

insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('vladimir', 'jirnovskiy', '2001-01-10', 'male');
insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('glad', 'slakov', '2001-01-22', 'male');
into call_centr(name, last_name, date_of_byrth, gender) VALUES ('Barak', 'obama', '2001-06-22', 'male');
insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('joe', 'baiden', '2001-06-22', 'male');
insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('joe', 'rosterov', '2001-02-22', 'male');
insert into call_centr(name, last_name, date_of_byrth, gender) VALUES ('glame', 'jiradov', '2000-02-22', 'male');

select * from cars where made_by='Toyota'and model='camry' order by date Desc;

Select * from call_centr order by name desc limit 5;

select * from drivers where staj > 10 and gender= 'female';

select * from drivers where date_of_byrth>'1975-10-10';

