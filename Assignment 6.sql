---Assignment 6

--1)Write a SQL statement to prepare a list with salesman name, customer name and their
--cities for the salesmen and customer who belongs to the same city. -c-
select s.name,c.cust_name,c.city from salesman s join customer c on s.city = c.city;

--2)Write a SQL statement to know which salesman is working for which customer.-c-
select s.name,c.cust_name from salesman s join customer c on s.salesman_id = c.salesman_id;

--3)Write a SQL statement to find the list of customers who appointed a salesman for their jobs who gets a commission
--from the company is more than 12%.? -c-
select cust_name from customer inner join salesman using(salesman_id)
where salesman.commission>'0.12';

--4)Write a SQL statement to make a list with order no, purchase amount, customer name and their cities for those
--orders with order amount between 500 and 2000.-i-
select o.ord_no,o.purch_amt,c.cust_name,c.city from orders o inner join customer c using (customer_id)
where o.purch_amt between 500 and 2000;

--5)Write a SQL statement to find the details of a order i.e. order number, order date, amount of order,
--which customer gives the order and which salesman works for that customer and how much commission he gets for an order.-i-
select o.ord_no,o.purch_amt,o.ord_date,c.cust_name,s.commission from orders o
join customer c on o.customer_id = c.customer_id
join salesman s on c.salesman_id =c.salesman_id;


--6)Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear
--for all customers and vice versa. -c-
select s.name,c.cust_name from salesman s full join customer c using (city);
--7)Write a SQL statement to make a join on the tables salesman, customer and orders in such a form
--that the same column of each table will appear once and only the relational rows will come. -i-
select s.salesman_id,c.customer_id,o.ord_no from salesman s
join customer c on s.salesman_id = c.salesman_id
join orders o on c.customer_id = o.customer_id;
 

--8)Write a SQL statement to make a list in ascending order for the customer who works through a salesman.-c-
select c.cust_name,s.name from customer c inner join salesman s
using (salesman_id) order by c.cust_name;

 
--9)Write a SQL statement to make a list in descending order for the salesmen who works either for
--one or more customer or not yet join under any of the customers. -i-
select s.name,c.cust_name,o.ord_no from salesman s
join customer c on s.salesman_id = c.salesman_id
join orders o on c.customer_id = o.customer_id
order by s.name desc;
