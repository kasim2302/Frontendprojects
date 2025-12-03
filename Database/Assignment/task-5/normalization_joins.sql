create database flipkart;
use flipkart;

create table customers 
(customer_id int primary key auto_increment,
customer_name varchar(30),
customer_phone varchar(15)
);

insert into customers (customer_name,customer_phone) values 
("Mukesh","1234098764"),
("Ramesh","8756342134"),
("Suresh","5434908756"),
("David","6754231289"),
("John","6534092898");
select * from orders;
create table product 
( product_id int primary key auto_increment,
  product_name varchar(100),
  product_price decimal(10,2)
);

insert into product (product_name,product_price) values
("Labtop",40000),
("Mouse",1000),
("Headphone",15000),
("Monitor",10000),
("Keyboard",800);

create table orders 
(order_id int primary key auto_increment,
 customer_id int,
 product_id int,
 order_date date,
 foreign key (customer_id) references customers(customer_id),
 foreign key (product_id) references product(product_id)
);

insert into orders (customer_id, product_id, order_date) values
(1, 1, '2025-01-01'),
(2, 3, '2025-01-03'),
(1, 2, '2025-01-05'),
(4, 5, '2025-01-08'),
(3, 4, '2025-01-10');

create table students (
student_id int primary key ,
student_name varchar(50)
);
insert into students values
(101, 'Rahul'),
(102, 'Sneha'),
(103, 'Arun'),
(104, 'Meera'),
(105, 'Vijay');

create table courses (
 course_id int primary key auto_increment,
 course_name varchar(50),
 teacher varchar(50)
);
insert into courses (course_name, teacher) values
('Python', 'Mr. Kumar'),
('Java', 'Mrs. Anita'),
('SQL', 'Mr. Raj'),
('HTML', 'Ms. Priya'),
('React', 'Mr. Joseph');

create table course_student (
  student_id int,
  course_id int,
  primary key(student_id,course_id),
  foreign key(student_id) references students(student_id),
  foreign key(course_id) references courses(course_id)
);
insert into course_student values
(101, 1),
(101, 3),
(102, 2),
(103, 1),
(105, 5);

select * from course_student;

SELECT customer_name as c, product_name as p, order_date as o
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN product p ON o.product_id = p.product_id;

SELECT p.product_name, p.product_price, COUNT(o.order_id) AS total_orders
FROM product p
INNER JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_id;


SELECT p.product_name, o.order_id
FROM product p
LEFT JOIN orders o ON p.product_id = o.product_id;

SELECT o.order_id, c.customer_name, o.order_date
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;

SELECT o.order_id, p.product_name, o.order_date
FROM product p
RIGHT JOIN orders o ON p.product_id = o.product_id;

