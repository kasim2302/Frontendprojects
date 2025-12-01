create database company;
use company;

create table employee (
id int primary key auto_increment,
name varchar(30),
department varchar(30),
salary int,
city varchar(30)
);

insert into employee (name,department,salary,city) values
 ("sekar","IT",20000,"chennai"),
 ("Rajesh","IT",15000,"Bengaluru"),
 ("Suresh","CS",25000,"Tenkasi"),
 ("Ramesh","Finance",25000,"Coimbatore"),
 ("Kumar","IT",40000,"Salem"),
 ("Arun","BPO",15000,"chennai"),
 ("Abdul","IT",30000,"Erode"),
 ("John","Finance",20000,"Bengaluru"),
 ("David","BPO",20000,"chennai"),
 ("Mukesh","IT",35000,"chennai");
 
 select * from employee;
 
  select count(*),department as total_emp_dept from employee group by department;
  
  select count(department) as dept_count,avg(salary) as Avg_salary_dept from employee group by salary;
  
  select count(*) as emp_count , city as emp_city from employee group by city;
  
  select count(*) as dept_emp , sum(salary) as total_salary_by_dept from employee group by department;

select department,count(*) as total_employees from employee group by department having count(*) > 2;  

select department as dept , avg(salary) as dept_salary_avg from employee group by department having dept_salary_avg > 25000;

select city, count(*) as total_emp from employee group by city having count(*) > 1;

select department,max(salary) as max_salary from employee group by department having max(salary) > 10000;

select department,sum(salary) as total_salary from employee group by department having sum(salary) > 100000;

select department,avg(salary) as dept_avg_salary from employee group by department having avg(salary) > (select avg(salary) from employee);

select city , avg(salary) as avg_salary from employee group by city having avg(salary) > 30000;

select department,count(*) as employee_salary  from employee where salary > 30000 group by department;

select department , count(*) as total_employees from employee group by department having min(salary) > 30000;
 
 