
--date:- SQL 15-sep-23

select * from employees;
select first_name || ' '||last_name from employees;

--date:- SQL 20-sep-23

--select 
select * from employees;
--Display emp_name along with job_id and salary
select first_name,job_id,salary from employees;
--Describe
describe employees;
--select * from jobs;
select * from employees;

--desc


--select * from employees;

/*select * from employees;
desc jobs;
select first_name,salary from employees;
*/

--- || concatination oper (combine multiple column)

--steven-25000
--john-35000

select first_name ||'-'||salary from employees;

--Arithmetic operators

-- +
select  first_name ,salary, salary +1000  from employees;
--column alias : rename output table column name.

select  first_name Name ,hire_date,hire_date +15 as h_date from employees;
-- (-)

--literals: used to create raw data.
my name is steven and I am working in IT_PROG

--date:- SQL 21-sep-23

--literals-->

--'my name is steven i am working in IT_PROG dept.'
--|| ' '
select 'my name is '|| first_name ||' 
I am working in '||job_id ||' dept.' from employees;


--
--o/p I am steven(first name) king (last_name)
--and my salary is:35000(salary)


---order by clause:used to start your data


select * from employees order by first_name desc;

select * from employees order by first_name ,last_name desc,email
desc;

--Eliminating duplicate rows
--distinct
select distinct department_id from employees 
order by department_id;

select distinct job_id from employees;

------------Row restriction---------
--where column_name conditions(operators)
 
--display employees name along with salary but salary should be graterthan 15000
-->
select first_name,salary from employees where salary > 15000;
order by first name;

--  job_id --> 'IT_PROG'
select first_name,salary,job_id from employees
where job_id = 'IT_PROG';

--not equal to --> <> or !=

---sql operators---
--1) Between ...and (range)
--Display employees. all data whose salary between 10000 to 15000.
select * from employees where salary between 10000 and 15000;

--2) In ( match multiple values )
--'SA_MAN','IT_PROG','AC_MGR'
select * from employees where job_id
IN ('SA_MAN','IT_PROG','AC_MGR');

--3) LIKE (TO match any pattern)
-- % : zero or more character
--_  : single char

--first_name start with A
select first_name from employees where first_name like('A%');

--first_name end with a.
select first_name from employees where first_name like('%a');

--- first_name 3rd cha -e 5th a
select first_name from employees where first_name like('__e_a%');

--Display employees name whose job_id end with 'CLERK'.
select first_name, job_id from employees where job_id like('%CLERK');

--- is null operator
select * from employees where commission_pct is null;

--date:- SQL 22-sep-23

--salary between 10000 to 15000
--job_id 'IT_PROG'
select * from employees where salary BETWEEN 5000 and 15000
and job_id = 'IT_PROG';


--or
--emp_name start with char s
--sal >15000
select * from employees where first_name like('S%') or
salary > 15000;


--not operator
--not including dep_id (90,50,100,110)
select * from employees where  department_id not in(90,50,100,110);

--date:- SQL 25-sep-23

--dual table (dumy table)

    10 +20 
--select 10 +20 from employees; --107
--'sql'--> SQL
--upper(): uppercase
select upper('sql')  from dual;
select 20+50  from dual;
--dual table 
--lower(): lower
select lower('TODAY we LEARN PYThon') from dual;

--substr(): substring
'sql tutorial we learn today'
'tutorial'
/* Syntax
      SUBSTR(column_name, start_position, o/p length)
*/ 
select substr('sql tutorial we learn today',5,8) from dual;

--convert emp first_name into upper case
select upper (first name) from employees;
--convert email into initcap
select initcap (email) from employees;
--convert emp into lowercase
select lower (first_name) from employees;

--instr()  : return index num
/* INSTR(i/p string,substring[,position,occurrence])
*/
 
'sql tutorial'
select instr('sql tutorial','t') from dual;--5
select instr('sql tutorial we learn today','t',6) from dual;--7
select instr('sql tutorial we learn today,sql-tutorial','t',6,2) from dual;--7
sql tutorial we learn today,sql-tutorial
 
space 't'   u -->'t        n--> t

'hello all good afternoon.
--find index number of 4th o  from above string.

select instr('hello all good afternoon','o',1,4)from dual;

---concat(): combine two columns.
 
select concat(first_name,'-') from employees;
select concat(concat(first_name,'-'),last_name)from employees;

--Using concat fun combine job_id and job_title 
--column  from jobs table.
select concat(concat(job_id,' '),job_title)from job;
select instr(concat(concat(job_id,' '),job_title),' ') from jobs;

select substr(concat(concat(job_id,' '),job_title),
instr(concat(concat(job_id,' '),job_title),' ')+1) from jobs;

--date:- SQL 26-sep-23

--trim--:
--'sql'--> '    sql   '
select trim('  sql  ') from dual;
select trim('####sql######') from dual;
select trim('#' from '######sql####') from dual;
select trim(leading '#' from '####sql#####') from dual;
select trim(trailing '#' from '####sql#####') from dual;

---ltrim : remove left side multiple char
--#@%*sql #@*%
select ltrim('#@@@%*sql #@*%','@#*%') from dual;
---rtrim : remove left side multiple char
select rtrim('#@@@%*sql #@*%','@#*%') from dual;
--nested function

--lpad : add charcter to left side of your string
--rpad: 
--LPAD(‘string’, o/p length, character to pad);
--RPAD(‘string’, o/p length, character to pad);
 
--o/p length--@@@sql
--
select lpad('sql',6,'@') from dual;
--using nested fun concept append (add) * in your first name
--***steven***
select first_name from employees;

select lpad(first_name,leangth(first_name)+3,'*') from employees;

select rpad(first_name,leangth(first_name)+3,'*'),
length(first_name)+6,'*')
from employees;

--REPLACE(string, string_to_replace, replacement_string);
select replace('hello good afternoon','hello','hi') from dual;
--a--> '@'

--REVERSE('string');
select reverse ('hello') from dual;

---number function
--round():
select round(23567.876895478) from dual;
select round(23567.876895478,2) from dual;

---trunc: remove numbers
select trunc(23567.876895478,2) from dual;

--mod :Returns remainder of division
select mod(10,3)from dual;

--ceil() :nearest highest int number
select ceil (3.7) from dual;

-- floor() :nearest lowest int number
select floor (3.7) from dual; --3

--power()
select power(3,3) from dual;

--sqrt() :
select sqrt(9) from dual;

----date functions-----
--:sysdate
select sysdate from dual;
--currentdate
select current_date from dual;

--SESSIONTIMEZONE : Returns time zone of the user’s session.
--SYSTIMESTAMP : Returns the date and time of the database.
--CURRENT_TIMESTAMP : Returns current date and time from user’s session.
 
select SESSIONTIMEZONE from dual;
 
select CURRENT_TIMESTAMP from dual;

--add months()--n
select add_months(sysdate,2) from dual;

--next_day() :
select next_day(sysdate,'saturday') from dual;

--last_day() :
select last_day(sysdate) from dual;

select last_day(hire_date) from employees;

--date:- SQL 27-sep-2023

--MONTHS_ BETWEEN (DATE1,DATE2)

select round(MONTHS_BETWEEN(SYSDATE,hire_date)) from employees;

select round(MONTHS_BETWEEN(SYSDATE,'23-06-23')) from dual;

--Extract() -- return Date components
--day
--month
--year
select extract(year from sysdate) from dual;
select extract(month from sysdate) from dual;
select extract(day from sysdate) from dual;


--Display employees name whose joining year is 2023.
select first_name,EXTRACT(YEAR FROM hire_date) from employees 
where EXTRACT(YEAR FROM hire_date) =2003;


---conversion function
--varchar(255): charcter length can be change
--char:fixed length
--number
--date
 
name varchar(20): 
--john (4)-4 (16)
steven --6
 
name char(20) 
john -20 -->4 
steven -20
 
number(6,2) --> 2567.45
 
date dd-mm-yy
 
select * from employees where department_id = '90';
--to_char()
--to_number()
--to_date()
 
date--char
char--date
number--char
char--number
 
date--number not possible 34
number --date not possible 35346
 
--to_char(date,'fm')
date --char
select to_char(sysdate,'yyyy') from dual;
select to_char(sysdate,'ddspth') from dual;
select to_char(sysdate,'ddth') from dual;
select to_char(sysdate,'mmth') from dual;
number--char
 
sydate--27-09-23: '27th-sep-2023'
select to_char(sysdate,'ddth_mon_yyyy') from dual;

number--char

salary --> $25000
--9 and 0 for number after $
alter session set nls_currency ='rs.';
select to_char(salary,'L9999999') from employees;

----to_number(char--number--)
select '$20' +'$5' from dual; --20 +5 =25 $25
 
select to_number('$20','$99') + to_number('$5','$99')
from dual;--25
 
select to_char((to_number('$20','$99') 
+ to_number('$5','$99')),'fm$99')
from dual;


---dep_id --90--> '$90'
select first_name from employees where depatment_id = '$90';

--using to_char
select first_name,to_char(department_id,'fm$999') from employees where 
to_char(department_id,'fm$999') = '$90';
 
--using to_number
select first_name from employees where 
department_id = to_number('$90','fm$99')--90;

--date:- SQL 29-sep-2023

---to_date()
--char-->date 
--'17-06-03'--'dd-mm-yy'
--'06-17-03'--'mm-dd-yy'
select * from employees where hire_date = to_date('06-17-03','fmmm-dd-yy');

----null functions
--nvl function (null value--> value)

select * from employees ;
select first_name, salary * commission_pct from employees;
 
select first_name,salary,commission_pct,
nvl(salary * commission_pct,salary) from employees;
 
select  salary * nvl(commission_pct,1) from employees;

---nvl2 function
--NVL2(Expression 1, Expression 2, Expression 3)
--If expression 1 is NOT NULL then return expression 2.
--If expression 1 is NULL then return expression 3
 
select nvl2 (commission_pct,1,0) from employees;
 
/* 
NULLIF Function
Compares expression 1 and expression 2 if they are same
return NULL. But if they are not equal returns expression 1
Expression 1 and expression 2 must be in same data type.
 
*/
select nullif('sql','sqlplus') from dual;
 
select first_name,last_name,length(first_name),
length(last_name)
,nullif (length(first_name),length(last_name))
from employees;

--COALESCE Function: return first not null  value.
 
select coalesce(null,90,8.9,null,null,null) from dual;

--DECODE(column/expression,search1,result1,search2,result 2,default)
 
select first_name,salary,job_id,
decode(job_id,'IT_PROG',salary+2000,'SA_MAN',salary +1000,salary)
from employees;

----multiple rows function
--avg()
select avg(salary) from employees;

select round(avg(distinct salary)) from employees;

---max(salary)
select max(salary) from employees; --18000
select first_name from employees where salary  = 24000;
 
select first_name ,salary from employees where salary =
(select max(salary) from employees);

--min(salary)
select min(salary) from employees; --18000
select first_name from employees where salary = 24000;
 
select first_name ,salary from employees where salary =
(select min(salary) from employees);

--sum()
select sum(salary) from employees;

--count()
select count(first_name) from employees;

select count(commission_pct) from employees; --35

select first_name from employees where salary > 15000;

latest--> amit,sundita
oldest--> lex
select first_name from employees where hire_date =
(select max(hire_date) from employees);

select first_name from employees where hire_date =
(select min(hire_date) from employees);

--write a sql to find 2nd highest salary with emp_name.
select max(salary) from employees where salary <(
select max(salary) from employees);

select first_name from employees where salary = (
select max(salary) from employees where salary <(
select max(salary) from employees);

--row num
select
min(salary ) from employees where  rownum <3 order by 1 desc;

--date:- SQL 2-oct-23

--DDL command (data defination language)
--create
--alter
--drop
--truncate

--create table table_name(c_name datatype);
create  table  students(
s_id number,
s_name varchar2(20),
email varchar(30),
phon_num number
);

--alter :

--add: add column
alter table students add course number;

--modify : modify datatypes
alter table students modify course varchar (10);

--rename : column + tables
alter table students rename column phon_num to contact_num;

--rename table
alter table students rename to students1;

--drop : table delete
desc students1;
drop table students1;

--truncate : all records can be delete

create table copy_dept as select * from departments;
truncate table copy_dept;
select * from copy_dept;
desc copy_dept;

--DML (data manipulation language)
--insert :

[2:03 PM] 3RI Technologies
    ---DML (Data manipulation lang)
--insert:
insert into students values(1,'john','john@gmail.com',2432563246);
insert into students values(1,'abcd','abcd@gmail.com',243256324);
insert into students values(1,'dms','dms@gmail.com',24325632);
insert into students values(1,'neeta','neeta@gmail.com',2432563);

insert into students 
values(1,'john','john@gmail.com',2432563246);
insert into students(email,s_id,s_name,phon_num) values
('alex@gmail.com',5,'alex',23456475);

select * from students;
--update
update students set email = 'john@yahoo.in' where s_id =1;

update students set phon_num = '2' where s_id =1;

--delete
delete from students where s_id =1;

--rownum rowid

select * from students order by s_name desc;
select rownum, rowid ,s_id,s_name from students;
delete from students where  rowid ='AAAE7DAAEAAAAFdAAF';


update students set
email = 'maya123@yahoo.in',phon_num=343634537 where s_id =4;

update students set email = 'maya123@yahoo.in',
phon_num = 343634537 where s_id =4;

--date:- SQL 3-oct-23

---group by clause
select job_id,max(salary) from employees group by  job_id;

--having clause
select job_id,max(salary) from employees group by job_id
having max(salary) > 12000;

--listagg
/*
Syntax :
 LISTAGG(column name[,delimeter]) within group order by
 [sort-expression]
---delimeter used for space and commas

*/
select LISTAGG(first_name,',')
WITHIN GROUP (ORDER BY first_name) from employees;

select department_id ,LISTAGG(first_name,',')
WITHIN GROUP (ORDER BY first_name) from employees group by department_id;


---constraint
--not null
--unique
--primary
--foreign key
--check

--not null:
--syntax: constraint cons_name(userdefine) constraint_type
--unique
--table double click pop up click

create table student(
s_id number CONSTRAINT nns_idl not null,
s_name varchar(20),
email varchar(30) constraint uqemail unique
);


drop table student;

insert into student values(1,'abc','abc@gmail.com');

create table course(
c_id number constraint pkc_idl primary key,
c_name varchar(20)unique
);

---foreign key constraint
select * from employees;

alter table student add course_id number;

alter table student add CONSTRAINT fkc_id FOREIGN key(course_id)
REFERENCES course(c_id);

select * from students;


----check
drop table copy_dept;
--not null constraint cannot table level constraint

create table emp(
emp_id int primary key,
emp_name varchar2(20) not null,
email varchar(20),
salary number check(salary>0),
constraint uq_email1 unique(email)
);

--date:- SQL 4-oct-23

---how to drop constraint.

alter table emp drop constraint uq_email1;
alter table emp drop constraint SYS_C008782;

alter table course drop constraint pkc_idl cascade;



































































































































 
































































