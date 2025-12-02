use company;
create table employees (
    id INT AUTO_INCREMENT PRIMARY KEY,        
    name VARCHAR(50) NOT NULL,          
    email VARCHAR(100) UNIQUE NOT NULL,       
    phone VARCHAR(15) UNIQUE,                 
    salary DECIMAL(10,2) NOT NULL,            
    joining_date DATE NOT NULL,              
    department VARCHAR(50),
    city VARCHAR(50)
);
insert into employees (name,email,phone,salary,joining_date,department,city) values
("Aarav", "aarav.patel@gmail.com", "8709432312", 30000, "2020-03-10", "IT", "Chennai"),     
("Fatima", "fatima.khan@gmail.com", "9123456780", 45000, "2021-06-15", "HR", "Bangalore"),    
("Rachel", "rachel.stein@gmail.com", "9234567891", 50000, "2019-09-20", "Finance", "Chennai"), 
("Joseph", "joseph.williams@gmail.com", "9345678902", 55000, "2022-01-05", "Marketing", "Mumbai"), 
("Mohammed", "mohammed.ali@gmail.com", "9456789013", 60000, "2020-11-12", "IT", "Chennai"),    
("Sita", "sita.rao@gmail.com", "9567890124", 65000, "2021-03-22", "HR", "Bangalore"),           
("David", "david.chen@gmail.com", "9678901235", 70000, "2018-07-30", "Finance", "Mumbai"),   
("Maria", "maria.garcia@gmail.com", "9789012346", 48000, "2022-08-18", "Marketing", "Chennai"), 
("Rahul", "rahul.singh@gmail.com", "9890123457", 52000, "2020-05-25", "IT", "Bangalore");

select * from employees;
set sql_safe_updates = 0;
update employees set name = upper(name);

update employees set name = upper(name);
update employees set name = replace(name,"a","A");
update employees set joining_date = "2025-11-15" where id =4;

select department, sum(salary) as total_salary_by_dept from employees group by department;

select * from employees where datediff(curdate(),joining_date) <= 30;

select name, round(salary,2) as rounded_salary from employees;

select * from employees where length(name) > 5;
select department, avg(salary) as dept_avg_salary from employees group by department having dept_avg_salary >= 50000;

update employees set salary = round(salary * 1.10,2);

select * from employees;

select name ,joining_date,month(joining_date) as Joining_month , year(joining_date) as joining_year from employees order by joining_date
asc;

alter table employees add Bonus int;
