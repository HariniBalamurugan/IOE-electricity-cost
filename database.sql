CREATE DATABASE IF NOT EXISTS ioe;

USE ioe;

drop table if exists users CASCADE;
drop table if exists admins CASCADE;

CREATE TABLE `users` (
    `USER_ID` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `NAME` VARCHAR(25) NOT NULL,
    `EMAIL_ID` VARCHAR(20) NOT NULL,
    `USERNAME` VARCHAR(15) NOT NULL,
    `KEY` INT NOT NULL
);

CREATE TABLE `admins`
(
    `ADMIN_ID` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `ADMIN_NAME` VARCHAR(25) NOT NULL,
    `EMAIL_ID` VARCHAR(20) NOT NULL,
    `USERNAME` VARCHAR(15) NOT NULL,
    `KEY` INT NOT NULL
);

CREATE TABLE `transactions`
(
    `TRANSACTION_ID` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `USER_ID` INT NOT NULL ,
    `WATT/SECOND` DECIMAL(5,3) NOT NULL,
    `TYPE` ENUM("GIVE","TAKE") NOT NULL,
    `TIMESTAMP` timestamp NOT NULL,
    FOREIGN KEY(`USER_ID`) REFERENCES users(`USER_ID`)
);






