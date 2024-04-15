---Assignment 5

--1)create salesman table
create table salesman(salesman_id number,name varchar(20),city varchar(20),
commission float(10));
insert into salesman values(5001,'James Hoog','New York',0.15);
insert into salesman values(5002,'Nail Knite','Paris',0.13);
insert into salesman values(5005,'Pit Alex','London',0.11);
insert into salesman values(5006,'Mc Lyon','Paris',0.14);
insert into salesman values(5007,'Paul Adam','Rome',0.13);
insert into salesman values(5003,'Lauson Hen','San Jose',0.12);
select * from salesman;

--2)create customer table
create table customer(costomer_id number,cust_name varchar(20),city varchar(20),
grade number,salesman_id number);
insert into customer values(3002,'Nick Rimando','New York',100,5001);
insert into customer values(3007,'Brad Davis','New York',200,5001);
insert into customer values(3005,'Graham Zusi','California',200,5002);
insert into customer values(3008,'Julian Green','London',300,5002);
insert into customer values(3004,'Fabian Johnson','Paris',300,5006);
insert into customer values(3009,'Geoff Cameron','Berlin',100,5003);
insert into customer values(3003,'Jozy Altidor','Moscow',200,5007);
insert into customer values(3001,'Brad Guzan','London',000,5005);
select * from customer;

--3)create hospital table
create table hospital(employee_id number,name varchar(20),position varchar(10),registered varchar(7),
ssn number);
insert into hospital values(101,'carla espinosa','head nurse','t','111111110');
insert into hospital values(102,'laverne roberts'','nurse','t','222222220');
insert into hospital values(103,'oaul flowers');','nurse','f','333333330');
select * from hospital;

--4)create country table
create table country(country_id number,country_name varchar(20),
region_id number);

--5)Write a SQL statement to create the structure of a table dup_countries similar to countries. 
create table dup_countries(country_id number,country_name varchar(20),
region_id number);

--6)Write a SQL statement to create a table countries set a constraint NULL. 
create table countries2(country_id number,country_name varchar(20),
region_id number constraint pr_id primary key);

--7)Write a SQL statement to create a table named jobs including columns job_id,
--job_title, min_salary, max_salary and check whether the max_salary amount 
--exceeding the upper limit 25000. 
create table job2(job_id number,job_title varchar(10),
min_salary number,
max_salary number check (max_salary>25000));

--8)Write a SQL statement to create a table named job_history including 
--columns employee_id, start_date, end_date, job_id and department_id and 
--make sure that the value against column end_date will be entered at the time
--of insertion to the format like '--/--/----'(dd-mm-yyyy).
create table job_history(employee_id2 number,start_date date not null,
end_date date check(end_date like'--/--/----'),job_id number,
department_id number);

--9)Write a SQL statement to create a table named countries including columns
--country_id,country_name and region_id and make sure that no duplicate data 
--against column country_id will be allowed at the time of insertion. 
create table countries4(country_id number constraint
uc_id unique,country_name varchar(15),
region_id number);

--10)Write a SQL statement to create a table named countries including columns country_id, 
--country_name and region_id and make sure that the country_id column will be a 
--key field which will not contain any duplicate data at the time of insertion.
create table country(country_id number,country_name varchar (15),
region_id number,primary key(country_id,region_id));

--11)Write a SQL statement to create a table countries including columns country_id, 
--country_name and region_id and make sure that the combination of columns 
--country_id and region_id will be unique.
create table countries5(country_id int primary key,country_name varchar(25),
region_id int,unique (country_id, region_id));

--12)Write a SQL statement to create a table job_history including columns
--employee_id, start_date, end_date, job_id and department_id and make sure that, 
--the employee_id column does not contain any duplicate value at the time of 
--insertion and the foreign key column job_id contain only those values 
--which are exists in the jobs table.
create table job_history(employee_id number primary key,start_date date not null,
end_date date not null,job_id varchar(15)not null,department_id number,
foreign key(job_id)references jobs(job_id));

--13)Write a SQL statement to create a table employees including columns 
--employee_id, first_name, last_name, email, phone_number hire_date, job_id, 
--salary, commission, manager_id and department_id and make sure that, 
--the employee_id column does not contain any duplicate value at the time of 
--insertion and the foreign key columns combined by department_id and manager_id 
--columns contain only those unique combination values, which combinations are 
--exists in the departments table.
create table employees(employee_id int primary key,first_name VARCHAR(50),
last_name VARCHAR(50),email VARCHAR(100),phone_number VARCHAR(20),
hire_date DATE,job_id VARCHAR(20),salary DECIMAL(10, 2),commission DECIMAL(10, 2),
manager_id INT,department_id int,foreign key (department_id, manager_id) 
REFERENCES departments (department_id, manager_id));

--14)SOFTDRINK
create table softdrink(drink_code number,drink_name varchar(20),
price decimal,calories number);
insert into softdrink values(101,'lime and lemon','20.00','120');
insert into softdrink values(102,'apple drink','18.00','120');
insert into softdrink values(103,'nature nectar','15.00','115');
insert into softdrink values(104,'green mango','15.00','140');
insert into softdrink values(105,'aam panna','20.00','135');
insert into softdrink values(106,'mango juice bahaar','12.00','150');
select * from softdrink;

--1)To display names and drink codes of those drinks that have more than 120 calories.
select drink_name,drink_code from softdrink where calories > 120;
--2)To display drink codes,names and calories of all drinks,in descending order of calories.
select drink_name,drink_code,calories from softdrink order by calories desc;
--3)To display names and price of drinks that have price in the range 12 to 18 (both 12 and 18 included).
select drink_name,price from softdrink where price between 12 and 18;
--4)Increase the price of all drinks in the given table by 10%
select drink_name,price +10"increase_price" from softdrink;
--5)Insert the following values in the table(108,"Orange Juice",14.00,120)
insert into softdrink values(108,'orange juice','14.00','120');
--6)Delete the record whose drinkcode is 102.
delete from softdrink where drink_code='102';
--7)select count(distinct(price))from softdrink;
select count(distinct(price))from softdrink;
--8)select max(calories)from softdrink;
select max(calories)from softdrink;
--9)select dname from softdrink where dname like "%Mango%";
select drink_name from softdrink where drink_name like('%mango%')

--15)Create library table
create table library(book_id number primary key,book_name varchar(40)not null,
type char(4),author varchar(40),no_copies number,price decimal);

















































