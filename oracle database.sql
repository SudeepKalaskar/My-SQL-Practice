--date:- SQL 09-sep-23

--subquery
--any
--all
--in
---any all operator
--fetch emp records whose salary is greater then  sa_man
select salary from employees where job_id = 'SA_MAN';
select * from employees where salary> any
(select salary from employees where job_id = 'SA_MAN');
select * from employees where salary> all
(select salary from employees where job_id = 'SA_MAN');
select * from employees where salary in
((select salary from employees where job_id = 'SA_MAN'));
 