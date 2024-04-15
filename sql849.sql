--date:- SQL 4-oct-23

--joins 
--It compares all common columns
--natural join:
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM jobs;
SELECT * FROM employees natural join departments;

--inner join: using
select * from employees inner join departments using(department_id);--106

--join ..on
--equi join
select * from employees join departments on
employees.department_id = departments.department_id;--106

select * from employees e join departments d on
e.department_id = d.department_id;--106

---join multiple tables
--employees,dept,jobs

select * from employees e join departments d on e.department_id =
d.department_id
join jobs j on e.job_id = j.job_id;

select e.first_name,d.department_name,l.city,c.country_name,
r.region_name
from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id join countries
c on l.country_id = c.country_id join regions r on c.region_id =
r.region_id;

---write a sql query to display employees name and  job_title.
select e.first_name,j.job_title from employees e join jobs j 
on e.job_id = j.job_id;

select first_name,job_title from employees inner join jobs
using(job_id);

--first_name,salary,department_name sal> 15000
select first_name,salary,department_name from employees  e join
departments d on e.department_id=d.department_id where salary >15000;
 
select first_name,salary,department_name from employees inner join 
departments using(department_id) where salary > 15000;

--write a sql query to display employees_name who are working in
--Executive department;
select first_name,department_name from employees e join departments d 
on e.department_id = d.department_id where department_name = 'Executive'; 

(select * from departments where department_name = 'Executive');

select * from departments where department_id =
(select department_id from departments where department_name = 'Executive');

select e.first_name,d.department_name from employees e join
departments d on e.department_id = d.department_id where d.department_name = 'Executive')

--date:- SQL 5-oct-23

---outer join() : matching & unmatching records
--left join
select * from employees left join departments using(manager_id); --107
select department_id from employees order by department_id;
select department_id from departments;

select * from employees right join departments using(manager_id); --107

select * from employees full join departments using(manager_id); --107


drop table student;
create table student(
s_id number,
s_name varchar(20));
drop table course;
create table course(
c_name varchar(20));

--student--> 4 records
--course--> 3 records (sql,python,java)
insert into student values(1,'john');
insert into student values(4,'alex');
select * from student;
insert into course values('python');
select * from course;

insert into student values(3,'Sk');
insert into student values(4,'alex');
select * from student;

drop table course;
create table course(
c_name varchar(20));

insert into course values('sql');
insert into course values('python');
insert into course values('java');

----cross join

select * from student cross join course order by student.s_id;

--date:- SQL 6-oct-23

---self join---

select * from employees;
select e.employee_id,e.first_name as emp , m.first_name as managers
from employees e join employees m on e.manager_id = m.employee_id
order by e.employee_id;

---tcl---
--commit : save
--rollback : undo 
--savepoint : check mark
select * from st1;
insert into st1 values(6,'sudeep','sudeepkalaskar@gmail.com',1);
commit;
insert into st1 values(7,'alex','alex@gmail.com',1);
insert into st1 values(8,'ankit','ankit@gmail.com',1);
savepoint a;
insert into st1 values(101,'alex','alex@gmail.com',1);
insert into st1 values(102,'ankit','ankit@gmail.com',1);
savepoint b;

update st1 set  email ='anki123@gmail.com' where st_id = 8;
select * from st1;

ROLLBACK to b;













































































    