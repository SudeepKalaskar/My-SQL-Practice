---Assignment 4

--1.Write a query to count the number of employee and commission is 0.25 to 0.35.
select count(first_name)from employees where commission_pct in(0.25,0.35);
--2. Write a query to get the job ID and maximum salary of the employees where 
--maximum salary is greater than or equal to 5000
select job_id,max(salary)from employees group by job_id having max(salary)>=5000;
--3. Print name start with 's' and print it proper sequence
select first_name from employees where first_name like('S%')order by first_name asc;
--4. Write a query to get the average salary and number of employees working the 
--department 100
select avg(salary),count(first_name)from employees where department_id=100;
--5. Write firstname having length 5+ characters
select first_name from employees where length(first_name)>5;
--6. Print the sum salary department wise and order properly
select department_id,sum(salary)from employees group by(department_id)
order by sum(salary);
--7. Write a query to get the department ID and the minimum payable in each 
--department.
select department_id,min(salary)from employees group by(department_id);
--8. Print how many employees are work under manager(sequence wise).
select manager_id,count(first_name) from employees group by manager_id
order by count(first_name)asc;
--9. Write a query to get the maximum salary of an employee working in IT_PROG 
--department.
select max(salary)from employees where job_id='IT_PROG';
--10. Print lowest,highest and average salary department wise
select department_id,min(salary),max(salary),round(avg(salary))from employees 
group by(department_id);

