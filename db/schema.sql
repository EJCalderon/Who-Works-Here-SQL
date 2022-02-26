DROP DATA IF EXISTS employeeDatabase;
DROP TABLE IF EXISTS rolesDatabase;
DROP TABLE IF EXISTS departmentsDatabase;

CREATE TABLE departments(
    id INTEGER AUTO_INCREMENT PRIMARY LEY,
    department_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (

    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    role_title VARCHAR(50) NOT NULL,
    department_id INTEGER NOT NULL,
    salary INTEGER,
    FOREIGN KEY(department_id) REFERENCES departments(id)
);

CREATE TABLE employees (
    employee_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_title VARCHAR(30),
    manager_id VARCHAR(30),
    salary VARCHAR(30),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);