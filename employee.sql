create database employee;
use employee;
create table empl(empno int, 
				 empname varchar(10),
                 job varchar(15),
                 mgr int,
                 salary decimal(6,2),
                 commision decimal(6,2),
                 deptno int
);
drop table empl;
describe empl;
insert into empl values(8369, 'Smith', 'Clerk' , 8902,  800.00, null , 20);
insert into empl values(8499, 'Anya', 'Salesman' , 8698,  1600.00, 300.00 , 30);
insert into empl values(8521, 'Seth', 'Salesman' , 8698,  1250.00, 500.00, 30);
insert into empl values(8566, 'Mahadevan', 'Manager' , 8839,  2985.00, null , 20);
insert into empl values(8654, 'Momin', 'Salesman' , 8698,  1250.00, 1400.00, 30);
insert into empl values(8698, 'Bina', 'Manager' , 8839,  2850.00, null , 30);
insert into empl values(8882, 'Shiavnsh', 'Manager' , 8839,  2450.00, null , 10);
insert into empl values(8888, 'Scott', 'Analyst' , 8856,  3000.00, null , 20);
insert into empl values(8839, 'Amir', 'President' , null,  5000.00, null , 10);
insert into empl values(8844, 'Kuldeep', 'Salesman' , 8698,  1500.00, 0.00, 30);
insert into empl values(8886, 'Anoop', 'Clerk' , 8888,  1100.00, null , 20);
insert into empl values(8900, 'Jatin', 'Clerk' , 8902,  950.00, null , 30);
insert into empl values(8902, 'Fakir', 'Analyst' , 8856,  3000.00, null , 20);
insert into empl values(8934, 'Mita', 'Clerk' , 8882,  130.00, null , 10);


/* 1)Display all the records from table empl */
select * from empl;

/* 2)Display employee number and employee name of all the employees*/
select empno,empname from empl;

/* 3)Display empname , salary and salary added with commision */
select empname , salary, salary+commision from empl;

/* 4) Write a query to display empname, salary and department number who are not getting commision*/
select empname , salary , deptno from empl where commision is null;

/* 5) Write a query to display empno, name,salary, salary per annum as annual salary whose commision is not null*/
select empno, empname, salary, salary*12 "Annual Salary" from empl where commision is not null;

/* 6) List all the department numbers */
select deptno from empl;

/* 7) List all the unique department numbers */
select distinct deptno from empl;

/* 8)List details of all clerks who have been assigned departments as yet */
select * from empl where job = 'Clerk' and deptno is null;

/* 9)List the details of those employes who have four lettered names */
select * from empl where empname like '____';

/* 10) List the details of all the employess whose annual salary is between 25000 - 40000 */
select * from empl where salary*12 between 25000 and 40000;

/* 11) How many job types are offered to employess? */
select distinct job from empl;

/* 12) List the details of the employess who earn more commision than their salaries */
select * from empl where commision > salary;

/* 13) Write a query to display the name,job title and salary of the employee who do not have a manager*/
select empname, job, salary from empl where mgr is null;

/* 14) Write a query to display the name of employees whose name contains A as the third alphabet */
select empname from empl where empname like '__a%';

/* 15) Write a query to display the name of employees whose name contains T as the last alphabet */
select empname from empl where empname like '%t';