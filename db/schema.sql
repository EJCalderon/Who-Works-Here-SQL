DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (

    role_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    role_title VARCHAR(50) NOT NULL,
    department_id INTEGER NOT NULL,
    salary INTEGER,
    FOREIGN KEY(department_id) REFERENCES departments(id)
);


CREATE TABLE employees (
    employee_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_title VARCHAR(30),
    manager_id VARCHAR(30),
    salary VARCHAR(30),
    FOREIGN KEY(roles_id) REFERENCES role(roles_id)
);