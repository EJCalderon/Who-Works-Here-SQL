DROP DATA IF EXISTS employeeDatabase;
DROP TABLE IF EXISTS rolesDatabase;
DROP TABLE IF EXISTS departmentsDatabase;

CREATE TABLE departments(
    id INTEGER AUTO_INCREMENT PRIMARY LEY,
    department_name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (

    role_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
    job_title VARCHAR(50) NOT NULL,
    department_id INTEGER NOT NULL,
    salary INTEGER,
    FOREIGN KEY(department_id) REFERENCES departments(id)
);

CREATE TABLE employee (
    employee_id INTEGER AUTO_INCREMENT NOT NULL PRIMARY
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    job_title VARCHAR(30),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);