USE employeetracker_DB;

/* Insert 3 Rows into your new table */
INSERT INTO department (dept_name)
VALUES ("Dept 1"), ("Dept 2"), ("Dept 3");

INSERT INTO role (dept_title,salary,dept_id)
VALUES ("Title 1",100000.00,1),  ("Title 2",200000.00,2),  ("Title 3",300000.00,3);

INSERT INTO employee (first_name,last_name, role_id, manager_id)
VALUES ("Employee,"One",11,111),  ("Employee","Two",22,222),  ("Employee","Three",33);