create database movie;
use movie;
CREATE TABLE cast (
    cast_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    role_type ENUM('Hero','Heroine','Villain','Supporting','Child Artist','Extra') NOT NULL,
    character_name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    joining_date DATE,
    experience_years INT
);
INSERT INTO cast (full_name, role_type, character_name, phone, email, joining_date, experience_years)
VALUES 
('Joseph Vijay', 'Hero', 'Arjun', '9876543210', 'vijay@movie.com', '2024-10-15', 20),
('Samantha Ruth Prabhu', 'Heroine', 'Priya', '9876501234', 'samantha@movie.com', '2024-10-17', 12),
('Vijay Sethupathi', 'Villain', 'Dev', '9876598765', 'vs@movie.com', '2024-10-20', 15);

INSERT INTO cast (full_name, role_type, character_name, phone, email, joining_date, experience_years)
VALUES ('Suriya', 'Hero', 'Arun', '9876501234', 'sur@movie.com', '2024-09-15', 22),
('Kamal Haasan', 'Extra', 'Dr. Vikram', '9876123456', 'kh@movie.com', '2024-11-05', 30),
('Vijay', 'Extra', 'ACP Arjun', '9876432109', 'vj@movie.com', '2024-08-10', 25),
('Dhanush', 'Extra', 'Matrix', '9876987456', 'dh@movie.com', '2024-12-01', 18),
('Ajith Kumar', 'Extra', 'Commander Jay', '9876678990', 'ak@movie.com', '2024-07-22', 28),
('Karthi', 'Extra', 'Sherlock', '9876881122', 'kt@movie.com', '2024-10-11', 20),
('Sivakarthikeyan', 'Extra', 'Lucky', '9876554433', 'sk@movie.com', '2024-06-30', 12);


CREATE TABLE materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(100) NOT NULL,
    category ENUM('Camera','Lights','Props','Costume','Makeup','Sound','Transport') NOT NULL,
    quantity INT NOT NULL,
    unit VARCHAR(50), -- pieces, sets, kg, etc.
    rented_from VARCHAR(100), -- vendor name
    rental_cost DECIMAL(10,2),
    purchase_date DATE
);
INSERT INTO materials (material_name, category, quantity, unit, rented_from, rental_cost, purchase_date)
VALUES
('Sony FX6 Cinema Camera', 'Camera', 2, 'pieces', 'FilmGear Rentals', 15000.00, '2024-10-10'),
('LED Softbox Lighting Kit', 'Lights', 5, 'sets', 'LightStudio Pvt Ltd', 8000.00, '2024-10-11'),
('Royal King Costume', 'Costume', 3, 'sets', 'Costume World', 5000.00, '2024-10-12'),
('Wireless Boom Microphone', 'Sound', 4, 'pieces', 'AudioHub Equipment', 6000.00, '2024-10-13');


CREATE TABLE salary (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    person_type ENUM('Cast','Technician') NOT NULL,
    person_id INT NOT NULL, -- links to cast or technician ID
    base_salary DECIMAL(10,2) NOT NULL,
    bonus DECIMAL(10,2) DEFAULT 0,
    deductions DECIMAL(10,2) DEFAULT 0,
    total_pay DECIMAL(10,2) AS (base_salary + bonus - deductions),
    payment_date DATE,
    payment_month VARCHAR(20)
);
INSERT INTO salary (person_type, person_id, base_salary, bonus, deductions, payment_date, payment_month)
VALUES
('Cast', 1, 2500000.00, 200000.00, 50000.00, '2024-11-01', 'November 2024'),
('Cast', 2, 1800000.00, 150000.00, 30000.00, '2024-11-02', 'November 2024'),
('Technician', 1, 150000.00, 20000.00, 5000.00, '2024-11-03', 'November 2024'),
('Technician', 2, 120000.00, 15000.00, 3000.00, '2024-11-03', 'November 2024');


CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    person_type ENUM('Cast','Technician') NOT NULL,
    person_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    status ENUM('Present','Absent','Leave') NOT NULL,
    check_in TIME,
    check_out TIME
);
INSERT INTO attendance (person_type, person_id, attendance_date, status, check_in, check_out)
VALUES
('Cast', 1, '2024-11-10', 'Present', '09:30:00', '17:45:00'),
('Cast', 2, '2024-11-10', 'Absent', NULL, NULL),
('Technician', 1, '2024-11-10', 'Present', '08:45:00', '18:15:00'),
('Technician', 2, '2024-11-10', 'Leave', NULL, NULL);


CREATE TABLE technicians (
    technician_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    job_role ENUM('Camera Man','Lighting','Sound Engineer','Makeup Artist','Editor','Director','Assistant Director','Screenwriter','Set Designer','Drone Operator') NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100),
    joining_date DATE,
    experience_years INT
);

INSERT INTO technicians (full_name, job_role, phone, email, joining_date, experience_years)
VALUES
('Lokesh Kanagaraj', 'Director', '9876102345', 'lokesh@filmcrew.com', '2024-10-10', 12),
('Arun Kumar', 'Camera Man', '9876509876', 'arun.cam@filmcrew.com', '2024-10-12', 8),
('Priya Sharma', 'Makeup Artist', '9876234509', 'priya.makeup@filmcrew.com', '2024-10-13', 6),
('Ravi Kumar', 'Sound Engineer', '9876457812', 'ravi.sound@filmcrew.com', '2024-10-15', 10);

ALTER TABLE salary
ADD CONSTRAINT fk_salary_cast
FOREIGN KEY (person_id)
REFERENCES `cast`(cast_id)
ON DELETE CASCADE;

ALTER TABLE salary
ADD CONSTRAINT fk_salary_technician
FOREIGN KEY (person_id)
REFERENCES technicians(technician_id)
ON DELETE CASCADE;

ALTER TABLE attendance
ADD CONSTRAINT fk_attendance_cast
FOREIGN KEY (person_id)
REFERENCES `cast`(cast_id)
ON DELETE CASCADE;

ALTER TABLE attendance
ADD CONSTRAINT fk_attendance_technician
FOREIGN KEY (person_id)
REFERENCES technicians(technician_id)
ON DELETE CASCADE;

