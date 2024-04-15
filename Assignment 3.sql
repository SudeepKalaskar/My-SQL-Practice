---Assignment 3

--1. To fetch "LAST_NAME" from the Employee table in INITCAP case:

SELECT INITCAP(LAST_NAME) FROM EMPLOYEES;


--2. To fetch "JOB_ID" from the Employee table in lower case:

SELECT LOWER(JOB_ID) FROM Employees;


--3. To find the position of the alphabet 'a' in the first name column 'Alexander' from the Employee table:

select instr('Alexander','A') from  dual;


--4. To fetch the unique values of Commission_pct from the Employees table and print its length:

SELECT DISTINCT Commission_pct FROM Employees;
SELECT COUNT(DISTINCT Commission_pct) AS Commission_pct_count FROM Employees;


--5. To sort the Employee table by DEPARTMENT_ID in descending order:

SELECT * FROM Employees ORDER BY DEPARTMENT_ID DESC;


--6. To remove 'www' from the left side of 'www.3ritech.com':

SELECT LTRIM('www.3ritech.com', 'www') from dual;


--7. To remove '.com' from the right side of 'www.3ritech.com':

SELECT RTRIM('www.3ritech.com', '.com') from dual;


--8. To add 5 '@' characters from the left side of a string:

SELECT LPAD('YourString', LENGTH('YourString') + 5, '@') from dual;


--9. To add 5 '@' characters from the right side of a string:

SELECT RPAD('YourString', LENGTH('YourString') + 5, '@') from dual;


--10. To add '_' from the left side of 'sqltutorials':

SELECT CONCAT('_', 'sqltutorials') from dual;


--11. To add '$' from the right side of 'sqltutorials':

SELECT CONCAT('sqltutorials', '$') from dual;


--12. To add '&&&' to both sides of the first_name column in the Employees table:

SELECT concat(concat('&&&',first_name),'&&&') FROM employees;


--13. To replace 's' with '$' in 'sqltutorials':

SELECT REPLACE('sqltutorials', 's', '$') from dual;


--14. To replace 'a' with '@' in the first_name column of the Employees table:

update Employees SET first_name = REPLACE(first_name, 'a', '@');


--15. To reverse the "last_name" of employees:

SELECT REVERSE(last_name) FROM employees;


--16. To combine "first_name" and "last_name" with a space and then display only "last_name":

SELECT SUBSTR(CONCAT(concat(first_name,'-'),last_name), 
INSTR(CONCAT(concat(first_name,'-'),last_name),'-')+ 1)FROM employees;


--17. To round 2345.67895643 to 3 decimal places:

SELECT ROUND(2345.67895643, 3) from dual;


--18. To truncate 234567895643 to 3 decimal places:

SELECT TRUNC(234567895643, 3) from dual;


--19. To find the mod of 56 % 3:

SELECT MOD(56, 3) from dual;


--20. To reverse "programming_language":

SELECT REVERSE('programming_language') from dual;


--21. To add 3 '&' characters to the starting of 'sql':

SELECT CONCAT('&&&', 'sql') from dual;


--22. To add '###' to both sides of 'sql':

SELECT rpad(lpad('sql',6,'#'),9,'#') from dual;


--23. To remove '###$$$' from "###$$$sqlprogramming$$$$####":

SELECT rtrim(ltrim('@@#$@@&*@@sqlprogramming@@#$&*@@','#@$*&'),'@#$*&')from dual;








