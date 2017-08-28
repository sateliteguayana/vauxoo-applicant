-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


-- Create new schema employee_employee

CREATE SCHEMA employee_employee
  AUTHORIZATION postgres;


CREATE TABLE employee_employee.employee (
    id int NOT NULL UNIQUE,
    first_name varchar(255), 
    last_name varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE employee_employee.employee_department (
    id int NOT NULL UNIQUE,
    name varchar(255), 
    description varchar(500),
    PRIMARY KEY (id)
);

CREATE TABLE employee_employee.employee_hobby (
    id int NOT NULL UNIQUE,
    name varchar(255), 
    description varchar(500),
    PRIMARY KEY (id)
);

-- ...

INSERT INTO employee_employee.employee (id,first_name,last_name) 
    VALUES ('1','Ludwing','Beethoven');
INSERT INTO employee_employee.employee (id,first_name,last_name) 
    VALUES ('2','Vicente','Sojo');
INSERT INTO employee_employee.employee (id,first_name,last_name) 
    VALUES ('3','Arturo','Michelena');
INSERT INTO employee_employee.employee (id,first_name,last_name) 
    VALUES ('4','Frederic','Chopin');

INSERT INTO employee_employee.employee_department (id,name,description) 
    VALUES ('1','Música', 'Departamento donde se destacan los diferentes compositores de la música');
INSERT INTO employee_employee.employee_department (id,name,description) 
    VALUES ('2','Pintura', 'Departamento donde se destacan los diferentes artistas de la pintura');
INSERT INTO employee_employee.employee_department (id,name,description) 
    VALUES ('3','Escultura', 'Departamento donde se destacan los diferentes artistas de la escultura');
INSERT INTO employee_employee.employee_department (id,name,description) 
    VALUES ('4','Cine', 'Departamento donde se destacan los diferentes artistas de cine');
INSERT INTO employee_employee.employee_department (id,name,description) 
    VALUES ('5','Literatura', 'Departamento donde se destacan los diferentes compositores de la literatura');
INSERT INTO employee_employee.employee_department (id,name,description) 
    VALUES ('6','Danza', 'Departamento donde se destacan los diferentes artistas de la danza');
    

-- Add fields deparment_id and employee_id
ALTER TABLE employee_employee.employee ADD department_id int;

-- Insert value to each employee and field related with deparment
UPDATE employee_employee.employee SET department_id=1 WHERE id=1;
UPDATE employee_employee.employee SET department_id=1 WHERE id=2;
UPDATE employee_employee.employee SET department_id=2 WHERE id=3;
UPDATE employee_employee.employee SET department_id=1 WHERE id=4;

-- Add fields hobby_id and employee_id
ALTER TABLE employee_employee.employee ADD hobby_id integer ARRAY;

-- Insert hobbies into table employee_hobby
INSERT INTO employee_employee.employee_hobby (id,name,description) 
    VALUES ('1','Música', 'Escuchar música');
INSERT INTO employee_employee.employee_hobby (id,name,description) 
    VALUES ('2','Lectura', 'Leer un libro');
INSERT INTO employee_employee.employee_hobby (id,name,description) 
    VALUES ('3','Cine', 'Ir al cine');
    
-- Give one o more hobbies to an employee
UPDATE employee_employee.employee SET hobby_id='{1,2}' WHERE id=1;
UPDATE employee_employee.employee SET hobby_id='{2,3}' WHERE id=2;
UPDATE employee_employee.employee SET hobby_id='{2,3}' WHERE id=3;
UPDATE employee_employee.employee SET hobby_id='{1}' WHERE id=4;
