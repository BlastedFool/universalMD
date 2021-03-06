DROP DATABASE IF EXISTS mainUMD;

CREATE DATABASE mainUMD;

USE mainUMD;

CREATE TABLE appointments(
`name` VARCHAR (50) NOT NULL,
`specialty` VARCHAR (25) NOT NULL,
`location_city` VARCHAR (30) NOT NULL,
`rating` FLOAT (3,2) NOT NULL,
`contact` INT NOT NULL,
`gender` VARCHAR(10) NOT NULL
);

CREATE TABLE patients(
`name` VARCHAR (50) NOT NULL,
`email` VARCHAR (100) NOT NULL,
`location` VARCHAR (100) NOT NULL,
`gender` VARCHAR(10) NOT NULL,
`symptoms` TEXT NOT NULL
);

CREATE TABLE doctors(
id INT (255) AUTO_INCREMENT NOT NULL PRIMARY KEY,
`name` VARCHAR (50) NOT NULL,
`specialty` VARCHAR (25) NOT NULL,
`location` VARCHAR (30) NOT NULL,
`rating` FLOAT (3,1) NOT NULL,
`contactNumber` CHAR (10) NOT NULL,
`gender` VARCHAR(10) NULL
);




INSERT INTO appointments (name,specialty,location_city,rating,contact,gender) VALUES ("max","doc","toronto",4.2,41323232,"male");

-- CREATE TABLE doctors(
-- 
-- );
-- 
-- CREATE TABLE patients(
-- 
-- );