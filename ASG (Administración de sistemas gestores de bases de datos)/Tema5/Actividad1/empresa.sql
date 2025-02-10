CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    position VARCHAR(100),
    salary DECIMAL(10,2)
);

INSERT INTO employees (name, department_id, position, salary) VALUES
('Alice Johnson', 10, 'Manager', 55000.00),
('Bob Smith', 20, 'Engineer', 48000.00),
('Charlie Brown', 10, 'Technician', 40000.00),
('Diana Green', 30, 'HR', 42000.00);

SELECT * FROM employees WHERE department_id = 10;

EXPLAIN SELECT * FROM employees WHERE department_id = 10;

CREATE INDEX idx_department ON employees(department_id);
