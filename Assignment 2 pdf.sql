---Assignment 2

--1)Create a query to display the employee name and department number 
--for employee whose department id is 80 or salary >1000.
select first_name||' '||last_name Employee_name,department_id,salary
from employees where department_id='80' or salary>1000;


--2)Display the name and hire date of every employee who was hired in 2004.
select first_name||' '||last_name Employee_name,hire_date from employees
where hire_date like('%04');

--3)Display the name and job of all employees who do not have 
--a job_id AD_VP.
select first_name||' '||last_name Employee_name,job_id from employees
where job_id not in('AD_VP');

--4)Display the name of employee whose name’s 3rd and 4th position 
--character is E and X job_id is ‘IT_PROG’.
select first_name||' '||last_name Employee_name,job_id from employees
where first_name like('__ex%')and job_id='IT_PROG';

--5)Display all details of employee whose first_name's 3rd character is ‘L’.
select * from employees where first_name like('__l%');

--6)Display all details of employee whose salary is not between 2000 to 
--7000 and job_id  is (‘IT_PROG’,FI_Account’)
select * from employees where salary<2000 or salary>7000 AND
job_id in('IT_PROG','FI_ACCOUNT');

--7)Display all details of employee whose phone number has 23 digit any where.
select * from employees where phone_number like('%23%');


