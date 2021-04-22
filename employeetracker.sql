DROP DATABASE IF EXISTS employeeTracker_DB;
CREATE DATABASE employeeTracker_DB;

USE employeeTracker_DB;

CREATE TABLE department(
  id INT NOT NULL AUTO_INCREMENT,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role(
  id INT NOT NULL AUTO_INCREMENT,
  dept_title VARCHAR(30) NOT NULL,
  salary INT NOT NULL,
  dept_id INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT,
  PRIMARY KEY (id)
);

  
  -- DEPARTMENT SEEDS -----
INSERT INTO department (dept_name)
VALUE ("Executive");
INSERT INTO department (dept_name)
VALUE ("Sales");
INSERT INTO department (dept_name)
VALUE ("Accounting");
INSERT INTO department (dept_name)
VALUE ("Legal");

-- EMPLOYEE ROLE SEEDS -------
INSERT INTO role (dept_title, salary, dept_id)
VALUE ("CEO", 20000, 1);
INSERT INTO role (dept_title, salary, dept_id)
VALUE ("Sales Manager", 12500, 3);
INSERT INTO role (dept_title, salary, dept_id)
VALUE ("Lead Bookkeeper", 12500, 4);
INSERT INTO role (dept_title, salary, dept_id)
VALUE ("In House Counsel", 17500, 6);
INSERT INTO role (dept_title, salary, dept_id)
VALUE ("Sales Associate", 75000, 5);
INSERT INTO role (dept_title, salary, dept_id)
VALUE ("COO", 19000, 2);
INSERT INTO role (dept_title, salary, dept_id)
VALUE ("In House Counsel", 19000, 7);

-- EMPLOYEE SEEDS ----
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jonathan", "Gardner", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Phil", "Katz", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Roger","West",null,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Zao", "Cheng", 1, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("James", "Stewart", 4, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Fred", "Astair", 1, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Rita", "Hayworth", 2, 7);




