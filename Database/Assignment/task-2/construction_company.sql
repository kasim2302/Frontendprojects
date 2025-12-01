create database construction;
use construction;

CREATE TABLE materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit VARCHAR(20), -- e.g. KG, Ton, Bag, Piece
    unit_price DECIMAL(10,2),
    supplier_name VARCHAR(100),
    purchase_date DATE,
    quantity INT,
    status ENUM('Available', 'Used', 'Damaged') DEFAULT 'Available'
);

INSERT INTO materials (material_name, category, unit, unit_price, supplier_name, purchase_date, quantity, status) VALUES
('Cement', 'Building Material', 'Bag', 430.00, 'Ram Suppliers', '2024-10-01', 150, 'Available'),
('Sand', 'Building Material', 'Ton', 1200.00, 'SR Traders', '2024-10-02', 20, 'Available'),
('Bricks', 'Building Material', 'Piece', 8.50, 'Siva Bricks', '2024-10-05', 5000, 'Available'),
('Steel Rods', 'Metal', 'Kg', 72.50, 'RK Steels', '2024-10-07', 900, 'Available'),
('Tiles', 'Finishing', 'Box', 1500.00, 'Tile House', '2024-10-10', 50, 'Available'),
('Paint', 'Finishing', 'Liter', 280.00, 'Asian Paints Dealer', '2024-10-15', 120, 'Available'),
('Wood Planks', 'Carpentry', 'Piece', 520.00, 'Wood Depot', '2024-10-18', 200, 'Available'),
('Concrete Blocks', 'Building Material', 'Piece', 35.00, 'ABC Concrete', '2024-10-20', 1200, 'Available'),
('Glass Sheet', 'Interior', 'Piece', 950.00, 'GlassWorks', '2024-10-22', 30, 'Available'),
('Wires', 'Electrical', 'Roll', 750.00, 'Electric Mart', '2024-10-25', 50, 'Available');


CREATE TABLE staffs (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    role VARCHAR(50), -- Mason, Supervisor, Driver, Helper
    phone VARCHAR(15),
    email VARCHAR(100),
    address TEXT,
    joining_date DATE,
    salary DECIMAL(10,2),
    status ENUM('Active', 'Resigned', 'On Leave') DEFAULT 'Active'
);

INSERT INTO staffs (full_name, role, phone, email, address, joining_date, salary, status) VALUES
('Arun Kumar', 'Mason', '9876578901', 'arun@build.com', 'Chennai', '2024-08-10', 18000.00, 'Active'),
('Suresh Babu', 'Supervisor', '9876001245', 'suresh@build.com', 'Coimbatore', '2024-07-05', 25000.00, 'Active'),
('Prakash Raj', 'Electrician', '9876771234', 'prakash@build.com', 'Madurai', '2024-09-01', 22000.00, 'Active'),
('Saravanan', 'Painter', '9876609987', 'saran@build.com', 'Chennai', '2024-06-15', 20000.00, 'Active'),
('Vijay', 'Driver', '9876894567', 'vijay@build.com', 'Salem', '2024-09-20', 16000.00, 'Active'),
('Ramesh', 'Welder', '9876678902', 'ramesh@build.com', 'Trichy', '2024-10-05', 22000.00, 'Active'),
('Kannan', 'Helper', '9876345671', 'kannan@build.com', 'Chennai', '2024-08-01', 12000.00, 'Active'),
('Muthu', 'Carpenter', '9876998765', 'muthu@build.com', 'Vellore', '2024-09-25', 23000.00, 'Active'),
('Rajesh', 'Plumber', '9876123457', 'rajesh@build.com', 'Erode', '2024-07-20', 21000.00, 'Active'),
('Gokul', 'Security', '9876567890', 'gokul@build.com', 'Chennai', '2024-10-30', 15000.00, 'Active');

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT,
    date DATE,
    check_in TIME,
    check_out TIME,
    status ENUM('Present', 'Absent', 'Leave', 'Half-Day') DEFAULT 'Present',
    FOREIGN KEY (staff_id) REFERENCES staffs(staff_id)
);
 
INSERT INTO attendance (staff_id, date, check_in, check_out, status) VALUES
(1, '2024-11-01', '09:00:00', '17:00:00', 'Present'),
(2, '2024-11-01', '09:10:00', '17:15:00', 'Present'),
(3, '2024-11-01', '09:05:00', '17:30:00', 'Present'),
(4, '2024-11-01', '09:00:00', '17:00:00', 'Present'),
(5, '2024-11-01', null, null, 'Absent'),
(6, '2024-11-01', '09:30:00', '16:00:00', 'Half-Day'),
(7, '2024-11-01', '09:00:00', '17:00:00', 'Present'),
(8, '2024-11-01', '09:10:00', '17:00:00', 'Present'),
(9, '2024-11-01', '09:00:00', '17:30:00', 'Present'),
(10,'2024-11-01', null, null, 'Leave');

 
CREATE TABLE stock (
    stock_id INT PRIMARY KEY AUTO_INCREMENT,
    material_id INT,
    transaction_type ENUM('IN', 'OUT') NOT NULL,
    quantity INT NOT NULL,
    transaction_date DATE,
    site_location VARCHAR(100),
    remarks TEXT,
    FOREIGN KEY (material_id) REFERENCES materials(material_id)
);

INSERT INTO stock (material_id, transaction_type, quantity, transaction_date, site_location, remarks) VALUES
(1, 'IN', 50, '2024-11-02', 'Site A', 'New stock received'),
(2, 'OUT', 5, '2024-11-02', 'Site B', 'Used for flooring'),
(3, 'OUT', 1000, '2024-11-03', 'Site A', 'Wall construction'),
(4, 'IN', 200, '2024-11-03', 'Warehouse', 'Bulk purchase'),
(5, 'OUT', 10, '2024-11-04', 'Site B', 'Bathroom tiles'),
(6, 'OUT', 20, '2024-11-04', 'Site A', 'Painting work'),
(7, 'IN', 50, '2024-11-05', 'Warehouse', 'Carpentry materials'),
(8, 'OUT', 200, '2024-11-05', 'Site B', 'Block work'),
(9, 'OUT', 5, '2024-11-06', 'Site A', 'Window installation'),
(10,'IN', 10, '2024-11-06', 'Warehouse', 'Electrical supply restock');

CREATE TABLE salary (
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT,
    salary_month VARCHAR(20), -- e.g. Jan-2025
    base_salary DECIMAL(10,2),
    overtime_amount DECIMAL(10,2),
    deductions DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    payment_status ENUM('Paid', 'Pending') DEFAULT 'Pending',
    payment_date DATE,
    FOREIGN KEY (staff_id) REFERENCES staffs(staff_id)
);

INSERT INTO salary (staff_id, salary_month, base_salary, overtime_amount, deductions, net_salary, payment_status, payment_date) VALUES
(1, 'Nov-2024', 18000.00, 1200.00, 300.00, 18900.00, 'Paid', '2024-11-30'),
(2, 'Nov-2024', 25000.00, 1500.00, 500.00, 26000.00, 'Paid', '2024-11-30'),
(3, 'Nov-2024', 22000.00, 1000.00, 200.00, 22800.00, 'Paid', '2024-11-30'),
(4, 'Nov-2024', 20000.00, 800.00, 0.00, 20800.00, 'Paid', '2024-11-30'),
(5, 'Nov-2024', 16000.00, 0.00, 300.00, 15700.00, 'Pending', NULL),
(6, 'Nov-2024', 22000.00, 900.00, 200.00, 22700.00, 'Paid', '2024-11-30'),
(7, 'Nov-2024', 12000.00, 300.00, 0.00, 12300.00, 'Paid', '2024-11-30'),
(8, 'Nov-2024', 23000.00, 1400.00, 300.00, 24100.00, 'Paid', '2024-11-30'),
(9, 'Nov-2024', 21000.00, 1000.00, 200.00, 21800.00, 'Paid', '2024-11-30'),
(10,'Nov-2024',15000.00, 500.00, 100.00, 15400.00, 'Pending', NULL);

