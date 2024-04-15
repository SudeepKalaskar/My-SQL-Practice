---Assignment of Chapter 1&2

--1)Show all tables data one by one.
select * from countries;
select * from departments;
select * from employees;
select * from job_history;
select * from jobs;
select * from locations;
select * from regions;

--2)Show structure of Location table.
describe locations;

--3)Concate Street_address,postalcode,city with ‘,’ from locations table.
select street_address||','||postal_code||','||city from locations;

--4)Select first_name, last_name  and dep_id from employees 
--and concate f_name and last_name with space.
select first_name||' '||last_name, department_id from employees;

--5)My first name is  (steven) and I am from (‘IT_PROG’ )’department.
select 'My first name is '||first_name||' and I am from '||job_id||
' department'from employees;

--7)Show table data like (job_title )’salary is ‘(max_salary)
select job_title||' '||' salary is'||max_salary from jobs;

--8)location id,street address,postal code,city  give alias name  
--full address and concate all coloumn with ‘,’
select location_id||','||street_address||','||postal_code||','||city 
as FULL_ADDRESS from locations;

--9)Eliminate duplicate rows of job_id.
select distinct job_id from employees;

--10)Display the name of all employees whose DEPARTMENT ID 
--is 60, 110,80,90 with STATEMENT 
--{Department id of (NAME) is (DEPARTMENT ID)}
select 'Department ID of '||first_name||' is '||department_id 
from employees where department_id in (60,110,80,90);

--11)Write a query for increment of salary by 
--5000 of EMPLOYEE ID 170,175,180.
select first_name,salary,salary+5000 from employees where employee_id 
in (170, 175,180);

--12)Display STATEMENT: {(FULL NAME) is working in (job_id) 
--with (employee_id).}
select first_name||' '||last_name||' is working in '||job_id||' with '
||employee_id from employees;

--13)Write a query for Employees, 
--who are working as PU CLEARK, ST CLERK, SH CLERK Having
--salary between 2000 and 15000
select * from employees where salary 
between 2000 and 15000 AND job_id in('PU_CLERK','ST_CLERK','SH_CLERK');

--14)Display employees FULL NAME who NOT having {department Id = 80}
select first_name||' '||last_name as Full_Name,department_id from employees
where department_id not in('80');

--15)Write a query to decrement the salary by 3000 of 
--Employee id 201,204,205
select first_name,employee_id,salary,salary-3000 New_salary from employees 
where employee_id in(201,204,205);

--16)Write a query for employees whose salary are 
--greater than or equal to 1000 and job id having 'CLERK' at the end.
select * from employees where salary>=1000 and job_id like('%CLERK');

--17)Write a query to get the employee id, first_name and last_name 
--for those employees who do not earn any commission.
select first_name,last_name,employee_id,commission_pct from employees 
where commission_pct is null;

--18)Display full name,job id, salary of employee from IT_PROG and 
--SA_REP department 
--whose salary between 2000 and 15000 and display their annual salary.
select first_name||' '||last_name Full_name,job_id,salary,salary*12 
Annual_salary from employees
where job_id in('IT_PROG','SA_REP')
and salary between 2000 and 15000;

--19)Display full name of employee and 
--print the list in descending whose email start with J.
select first_name||' '||last_name Full_name,email from employees
where email like('J%')order by first_name desc;

--20)Display the name of employee who hired in march 
--and their job is SA_REP and manager id is 146,147,148.
select first_name||' '||last_name Full_name,hire_date,job_id,manager_id
from employees where hire_date like ('__-03%') and job_id='SA_REP'
and manager_id in(146,147,148);

--21)write a query to display employee name and hire date ,give any alias.
--(Use the literal—myself(emp_name), I hired on(hire_date).
select 'Myself '||first_name||' '||last_name||','||' I hired on '||
hire_date||'.' as Introduction from employees;

--22)display all employee whose MANAGER_ID is greater 
--than 103 with having last digit of PHONE_NUMBER is 6
select * from employees where manager_id>103 and phone_number like('%6');

--23)Display all records who have john,Alexander anywhere
--in name column.
select * from employees where first_name in('John','Alexander');

select * from employees where last_name in('John','Alexander');










