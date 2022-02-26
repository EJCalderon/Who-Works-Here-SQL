INSERT INTO departments(department_name)
VALUES
('Operations'),
('Rigging'),
('Sales');

INSERT INTO roles(role_title, department_id, salary)
VALUES
('Director of Operations', 1, 50000),
('Director of Rigging', 6,10000)
('Director of Sales', 0, 50000),
('Technician', 3, 30000);

INSERT INTO employee (first_name, last_name, role_title, department_id, manager_id, salary)
('Tommy', 'Sanchez', 'Director of Operations', 'Operations', 50000, 1, 'Operations Manager'),
('Kenny', 'Mendoza', 'Director of Rigging', 'Rigging', 10000, 6, 'Rigging Manager'),
('Arno', 'Calderon', 'Director of Sales', 'Sales', 50000, 0, 'Sales Manager'),
('Anthony', 'Morales', 'Technician', 'Operations', 30000, 3, null);
