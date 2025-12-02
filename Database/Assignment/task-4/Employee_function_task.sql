use company;
alter table employee add Joining_date date;
update employee set Joining_date = '2025-11-08' where id = 1;

select * from employee;

select department , avg(salary) as avg_dept_salary from employee group by department;

select * from employee where datediff(curdate(),Joining_date);
select upper(name) as NAME from employee;

select city, count(*) as emp_count from employee group by city;

select department, avg(salary) as dept_avg_salary from employee where salary > 50000  group by department;

select * from employee where length(name) > 5;

select name,datediff(curdate(),Joining_date) as emp_work_days from employee;

select replace(name,'a','@') as Replaced_names from employee;

select name , year(Joining_date) as Joining_year , month(Joining_date) as Joining_month from employee;

select city,max(salary) as high_salary from employee group by city; 