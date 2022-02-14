CREATE DATABASE homework;
CREATE TABLE employee
(
    id                   INT(11)      NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name                 VARCHAR(255) NOT NULL,
    surname              VARCHAR(255) NOT NULL,
    middle_name          VARCHAR(255),
    given_name           VARCHAR(255),
    corporate_car        BOOLEAN      NOT NULL,
    position_id          INT          NOT NULL,
    department_id        INT          NOT NULL,
    names_and_birthdates INT          NOT NULL
);

CREATE TABLE department
(
    id                INT(11)      NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name              VARCHAR(255) NOT NULL,
    department_phones INT          NOT NULL
)
SELECT department.id
FROM department
         INNER JOIN employee ON department.id=employee.department_id;


CREATE TABLE department_phones
(
    id    INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    phone INT(11) NOT NULL
)
SELECT department_phones.id
FROM department_phones
         INNER JOIN department ON department_phones.id = department.department_phones;

CREATE TABLE names_and_birthdates
(
    id         INT(11)      NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(255) NOT NULL,
    birthdates DATETIME     NOT NULL
)
SELECT names_and_birthdates.id
FROM names_and_birthdates
         INNER JOIN employee ON names_and_birthdates.id = employee.names_and_birthdates;



CREATE TABLE position_1
(
    id   INT(11)      NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
)
SELECT position_1.id
FROM position_1
         INNER JOIN employee ON position_1.id = employee.position_id;
