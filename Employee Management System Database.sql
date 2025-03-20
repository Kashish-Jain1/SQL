create database EMS;
use EMS;

create table Departments (department_id int primary key, 
						  department_name varchar (40) not null
                          );

create table Projects (project_id int primary key,
					   project_name varchar (200) default null,
					   department_id int,
					   start_date date not null, 
					   end_date date default null,
					   foreign key Projects(department_id) references Departments (department_id)
					   );

create table Employees (employee_id int primary key,
                        first_name varchar(60) not null,
                        last_name varchar(60) not null,
                        department_id int,
                        hire_date date not null,
                        foreign key Employees(department_id) references Departments(department_id)
					     );
                
create table EmployeeProjects (employee_id int,
							   project_id int,
                               foreign key  (employee_id) references Employees (employee_id),
                               foreign key  (project_id) references Projects (project_id)
                               );

alter table Employees
add column Salary decimal (10,2) not null;
select * from employees;                               

insert into Departments values ( 100, "HR");
insert into Departments values ( 101, "Finance");
insert into Departments values ( 102, "Accounting");
insert into Departments values ( 103, "IT");
insert into Departments values ( 104, "Marketing");

insert into Projects values ( 1, "ProjectA", 100, "2021-04-1", "2022-08-15");
insert into Projects values ( 2, "ProjectB", 100, "2021-06-20", "2023-01-20");
insert into Projects values ( 3, "ProjectC", 100, "2021-02-1", "2022-12-15");
insert into Projects values ( 4, "ProjectD", 100, "2021-04-1", "2022-02-15");
insert into Projects values ( 5, "ProjectE",100, "2021-04-1", "2023-01-12");
insert into Projects values ( 6, "ProjectAB", 101, "2021-01-12", "2022-02-12");
insert into Projects values (7, "ProjectBC", 101, "2021-03-1", "2022-04-15");
insert into Projects values ( 8, "ProjectCD", 101, "2021-01-1", "2022-05-15");
insert into Projects values ( 9, "ProjectDE", 101, "2021-02-1", "2023-01-15");
insert into Projects values ( 10, "ProjectEF",101, "2021-03-1", "2022-04-15");
insert into Projects values ( 11, "ProjectABC", 102, "2021-07-1", "2022-05-15");
insert into Projects values ( 12, "ProjectBCD", 102, "2021-08-1", "2024-01-15");
insert into Projects values ( 13, "ProjectCDE", 102, "2021-12-1", "2023-02-15");
insert into Projects values ( 14, "ProjectDEF", 102, "2022-09-1", "2023-02-15");
insert into Projects values ( 15, "ProjectEFG",102, "2021-11-01", "2022-10-15");
insert into Projects values ( 16, "ProjectGHI", 103, "2021-02-1", "2022-10-15");
insert into Projects values ( 17, "ProjectIJK", 103, "2021-01-1", "2023-04-15");
insert into Projects values ( 18, "ProjectKLM", 103, "2021-02-1", "2023-02-15");
insert into Projects values ( 19, "ProjectMNO", 103, "2021-07-1", "2022-08-15");
insert into Projects values ( 20, "ProjectPQR",103, "2021-03-1", "2022-11-15");
insert into Projects values ( 21, "ProjectQRS", 104, "2021-01-01", "2021-11-15");
insert into Projects values ( 22, "ProjectRST",104, "2021-12-1", "2023-01-15");
insert into Projects values ( 23, "ProjectSTU", 104, "2021-02-1", "2023-03-15");
insert into Projects values ( 24, "ProjectTUV", 104, "2021-06-1", "2022-08-15");
insert into Projects values ( 25, "ProjectXYZ",104, "2021-05-1", "2022-07-15");
select * from projects;

insert into Employees values (501, "Akshay", "Kumar", 100, "2018-01-01", 25000);
insert into Employees values (502, "Amisha", "Kumari", 100, "2018-01-01", 30000);
insert into Employees values (503, "Bhuvan", "Kumar", 100, "2019-05-01", 100000);
insert into Employees values (504, "Bhavana", "Singh", 100, "2020-01-01", 35000);
insert into Employees values (505, "Chaitra", "Narayan", 100, "2019-11-15", 36000);
insert into Employees values (506, "Chirag", "Kumar", 100, "2020-01-01", 45000);
insert into Employees values (507, "Daksh", "Jain", 100, "2021-03-01", 50000);
insert into Employees values (508, "Disha", "Mehta", 101, "2019-07-01", 42000);
insert into Employees values (509, "Farhan", "Khan", 101, "2021-06-07", 48000);
insert into Employees values (510, "Fathima", "Afreen", 101, "2020-04-01", 56000);
insert into Employees values (511, "Gagan", "Shetty", 101, "2021-02-14", 28000);
insert into Employees values (512, "Ganga", "Kumari", 101, "2021-12-01", 33000);
insert into Employees values (513, "Harsh", "Gupta", 101, "2020-11-11", 47000);
insert into Employees values (514, "Hridya", "Sharma", 101, "2021-08-01", 39000);
insert into Employees values (515, "Jagadish", "M", 102, "2022-03-01", 45000);
insert into Employees values (516, "Kiran", "Kumar", 102, "2022-04-19", 66000);
insert into Employees values (517, "Kaashvi", "Shah", 102, "2020-09-09", 58000);
insert into Employees values (518, "Laksh", "Jain", 104, "2022-11-01", 70000);
insert into Employees values (519, "Lavanya", "VK", 104, "2021-12-01", 79000);
insert into Employees values (520, "Mohit", "Sharma", 104, "2021-05-12", 80000);
insert into Employees values (521, "Madhav", "Shah", 104, "2021-07-08", 68000);
insert into Employees values (522, "Neha", "Gupta", 104, "2020-08-26", 89000);
insert into Employees values (523, "Nisha", "Shetty", 102, "2016-01-01", 23000);
insert into Employees values (524, "Priya", "Gowda", 104, "2017-01-01", 45000);
insert into Employees values (525, "Pritham", "Kumar", 104, "2022-07-24", 55000);
select * from employees;

insert into EmployeeProjects values (501, 1);
insert into EmployeeProjects values (501, 2);
insert into EmployeeProjects values (502, 3);
insert into EmployeeProjects values (502, 4);
insert into EmployeeProjects values (503, 5);
insert into EmployeeProjects values (503, 6);
insert into EmployeeProjects values (503, 7);
insert into EmployeeProjects values (504, 8);
insert into EmployeeProjects values (504, 9);
insert into EmployeeProjects values (505, 10);
insert into EmployeeProjects values (505,11);
insert into EmployeeProjects values (506, 12);
insert into EmployeeProjects values (506, 13);
insert into EmployeeProjects values (507, 14);
insert into EmployeeProjects values (507, 15);
insert into EmployeeProjects values (508, 16);
insert into EmployeeProjects values (508, 17);
insert into EmployeeProjects values (509, 18);
insert into EmployeeProjects values (509, 19);
insert into EmployeeProjects values (510, 20);
insert into EmployeeProjects values (511,21);
insert into EmployeeProjects values (511, 22);
insert into EmployeeProjects values (512,23);
insert into EmployeeProjects values (512,24);
insert into EmployeeProjects values (513,25);
insert into EmployeeProjects values (513, 1);
insert into EmployeeProjects values (514, 2);
insert into EmployeeProjects values (514, 3);
insert into EmployeeProjects values (521, 4);
insert into EmployeeProjects values (521, 5);
insert into EmployeeProjects values (522, 6);
insert into EmployeeProjects values (522, 7);
insert into EmployeeProjects values (523, 8);
insert into EmployeeProjects values (523, 9);
insert into EmployeeProjects values (524, 10);
insert into EmployeeProjects values (524, 11);
insert into EmployeeProjects values (525, 12);
insert into EmployeeProjects values (525, 13);
insert into EmployeeProjects values (501, 14);
insert into EmployeeProjects values (502, 15);
insert into EmployeeProjects values (503, 16);
insert into EmployeeProjects values (505, 17);
insert into EmployeeProjects values (506, 18);
insert into EmployeeProjects values (509, 19);
insert into EmployeeProjects values (511, 20);
insert into EmployeeProjects values (522,21);
insert into EmployeeProjects values (521, 22);
insert into EmployeeProjects values (513,23);
insert into EmployeeProjects values (512, 24);
insert into EmployeeProjects values (525, 25);
select * from EmployeeProjects;

-- Questions
 
-- 6) Update the salary of all employees in the HR department by 8%.
update employees
set salary = salary + (salary * 0.08) 
where department_id = (select department_id from departments where department_name = "HR");

-- 7) Find the average salary of all employees.
select employee_id,
       avg(salary) as Avg_Salary, 
       first_name, 
       last_name from employees 
group by employee_id;

-- 8) )List all employees along with the projects they are working on.
select e.employee_id,       
        e.first_name, 
        e.last_name, 
        e1.project_id, 
        p.project_name 
from employees as e 
left join employeeprojects as e1 
on e.employee_id = e1.employee_id 
inner join projects as p 
on e1.project_id = p.project_id 
order by employee_id;

-- 9) Find the project with the longest duration.
select project_id, 
       project_name, 
       start_date, 
       end_date, 
	datediff(end_date, start_date) as Duration 
from projects 
order by Duration desc
limit 1;

-- 10) Count the number of employees in each department.
select count(employee_id), department_id from employees group by department_id;

-- 11) Retrieve the names of employees who have worked on more than one project. 
select e.first_name, e.last_name, e1.project_id 
from employees as e 
inner join employeeprojects as e1 
on e.employee_id = e1.employee_id 
where project_id > any 
(select count(project_id) as counts 
from employeeprojects 
group by project_id 
having counts >1);

-- 12) Find the department with the highest total salary expense.
select department_id, 
       sum(salary) as high_salary  
from employees 
group by department_id 
order by high_salary desc 
limit 1;

-- 13) Rank employees within each department based on their salary.
select e.employee_id, 
       e.first_name, 
       e.last_name, 
       e.salary, 
       e.department_id, 
(select count(*) + 1 from employees as e2 
where e2.department_id = e.department_id 
and e2.salary > e.salary) as salaries 
from employees as e 
order by e.department_id, salaries;

-- 14) Update the end date of the project with the shortest duration to '2022-12-31'.
update projects 
set end_date = '2022-12-31'
where project_id = (select project_id from projects  order by datediff(end_date, start_date) limit 1);

-- 15) Calculate the total salary expense for each department.
select department_id, 
       sum(salary) as salary  
from employees 
group by department_id 
order by department_id ;

-- 16) Identify employees who have not been assigned to any project.
select * from employees 
where employee_id not in 
(select employee_id from employeeprojects);

-- 17) Determine the department with the highest average project duration.
select department_id, 
       avg(datediff(end_date, start_date)) as Avg_duration 
from projects 
group by department_id 
order by Avg_duration desc 
limit 1;

-- 18) Classify employees into salary ranges (e.g., Low, Medium, High) based on their salary.
select employee_id, first_name, salary, 
case
when salary < 25000
then "Low income" 
when salary between 25000 and 50000
then "Medium Income"
else "High Income"
end income_distribution
from employees;

-- 19) Find the employee with the highest salary.
select employee_id, 
       first_name, 
       last_name, 
       salary from employees 
order by salary desc 
limit 1;

-- 20) Calculate the minimum salary and maximum salary of the particular department.
select department_id, 
       min(salary) as min_salary, 
       max(salary) as max_salary from employees 
where department_id = 101;

-- 1) Retrieve all columns from the Employees table.
select * from employees;

-- 2) Retrieve employees along with their department names.
select e.employee_id, 
       e.first_name, 
       e.last_name, 
       d.department_id, 
       d.department_name from employees as e 
left join departments as d 
on e.department_id = d.department_id;

-- 3) Retrieve employees hired after '2020-01-01'.
select * from employees 
where hire_date > '2020-01-01';

-- 4) Calculate the average salary of employees.
select employee_id,
       avg(salary) as Avg_Salary, 
       first_name, 
       last_name from employees 
group by employee_id;

-- 5) Count the number of employees in each department.
select count(employee_id), 
       department_id from employees 
group by department_id;

-- 6) Retrieve employees sorted by hire date in descending order.
select * from employees 
order by hire_date desc;

-- 7) Retrieve employees in the Finance or HR department.
select count(e.employee_id), 
       d.department_id, 
       d.department_name from employees as e 
left join departments as d 
on e.department_id = d.department_id 
group by department_id 
having department_name = "HR" or "Finance";

-- 8) Retrieve employees whose last name starts with 'S'.
select * from employees 
where last_name 
like "S%";

-- 9) Retrieve employees working on ProjectA.
select e.employee_id, 
       e.first_name, 
       e1.project_id, 
       p.project_name from employees as e 
inner join employeeprojects as e1 
on e.employee_id = e1.employee_id 
inner join projects as p 
on p.project_id = e1.project_id 
where p.project_name = "ProjectA";
 
-- 10) Retrieve employees and their project details.
select e.employee_id, 
       e.first_name, 
       e1.project_id, 
       p.project_name from employees as e 
left join employeeprojects as e1 
on e.employee_id = e1.employee_id 
inner join projects as p 
on p.project_id = e1.project_id;

-- 11) Retrieve all departments and their employees (including those with no employees).
select d.department_id, 
       d.department_name, 
       e.employee_id, 
       e.first_name, 
       e.last_name from departments as d 
left join employees as e 
on d.department_id = e.department_id;

-- 12) Retrieve departments with average salary greater than 70000. (no)
select d.department_id, 
       d.department_name, 
       avg(e.salary) as avg_salary from employees as e 
inner join departments as d 
on e.department_id = d.department_id 
group by department_id 
having avg_salary > 70000 
order by avg_salary;

select department_id, 
       avg(salary) as avg_salary from employees 
group by department_id 
having avg_salary > 70000;

-- 13) Increase the salary of all employees in the Marketing department by 10%.
update employees
set salary = salary + (salary * 0.1) 
where department_id = (select department_id from departments where department_name = "Marketing");
select * from employees where department_id = 104;

-- 14) Remove employees hired before '2019-01-01'.
delete from employeeprojects where employee_id in (501, 502, 523, 524);
select * from employees where employee_id in (501, 502, 523, 524);

-- 15) Find the employee with the highest salary.
select * from employees order by salary desc limit 1;

-- 16) Classify employees into salary ranges.
select employee_id, first_name, salary, 
case
when salary < 25000
then "Low income" 
when salary between 25000 and 50000
then "Medium Income"
else "High Income"
end income_distribution
from employees
order by income_distribution ;

-- 17) Retrieve employees and their projects in the Finance department.
select e.employee_id, 
       e.first_name, 
       e.last_name, 
       d.department_id, 
       d.department_name, 
       p.project_id, 
       p.project_name from employees as e 
       inner join employeeprojects as e1 
	on e.employee_id = e1.employee_id 
    inner join departments as d 
    on e.department_id = d.department_id 
    inner join projects as p 
    on p.project_id = e1.project_id 
    where department_name = "Finance";
    
-- 18) Find the department with the highest average salary.
select * from employees 
where salary > any (select avg(salary) from employees as e1 
group by department_id);

-- 19) Rank employees by salary within each department.
select e.employee_id, 
       e.first_name, 
       e.last_name, 
       e.salary, 
       e.department_id, 
(select count(*) + 1 from employees as e2 
where e2.department_id = e.department_id 
and e2.salary > e.salary) as salaries 
from employees as e 
order by e.department_id, salaries;

-- Another Method:-
select first_name, 
	   last_name, 
       department_id, 
       salary, 
       rank () over (partition by department_id order by salary) rank_ 
       from employees;


-- 20) Find the average project duration for each department.
select department_id, 
       avg(datediff(end_date, start_date)) as Avg_duration 
from projects 
group by department_id;
 
-- 21) Retrieve the earliest hire date among all employees.
select * from employees 
order by hire_date 
limit 1;

-- 22) List the projects that have employees assigned to them.
select p.project_id, 
       p.project_name, 
       e.employee_id, 
       e.first_name from projects as p 
left join employeeprojects as e1 
on p.project_id = e1.project_id 
inner join  employees as e 
on e.employee_id = e1.employee_id; 

-- 23) Find the employees who have the same last name and are in the same department.
select e.employee_id, 
       e.first_name, 
       e.last_name, 
       e.department_id from employees as e 
where last_name in (select last_name from employees as e1 
where e.last_name = e1.last_name 
and e.department_id = e1.department_id 
and e.employee_id <> e1.employee_id);

-- 24) Calculate the total salary expense for the company.
select sum(salary) from employees;

-- 25) Identify the employees with a salary above the average salary.
select * from employees 
where salary > any 
(select avg(salary) from employees);

-- 26) List the projects that are active and have employees assigned to them.
select * from projects 
where project_id in 
(select project_id from employeeprojects);

-- 27) Retrieve the employees who have not been assigned to any project.
select * from employees 
where employee_id not in 
(select employee_id from employeeprojects);

-- 28) Find the department with the highest total project duration.
select department_id, 
	datediff(end_date, start_date) as duration 
    from projects 
    order by duration desc 
    limit 1;

-- 29) Update the end date of ProjectA to '2022-11-30'.
 update projects 
 set end_date = '2022-11-30'
 where project_id = 1;
select * from projects where project_name = 'ProjectA';

-- 30) Determine the employee with the lowest salary in the HR department
select * from employees 
where department_id = 
(select department_id from departments 
where department_name = "HR") 
order by salary 
limit 1; 
 








  
                               
						
                               
                        