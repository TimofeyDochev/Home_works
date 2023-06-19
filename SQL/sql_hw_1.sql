create table employees(
id serial primary key,
employee_name Varchar(50)
);

insert into employees(employee_name)
values  ('Ann'),
	    ('Emma'),
		('Olivia'),
		('Ava'),
		('Mia'),
		('Isabella'),
		('Sophia'),
		('Noah'),
		('Liam'),
		('William'),
		('Dana'),
		('Mason'),
		('Duke'),
		('John'),
		('Maxim'),
		('Ruby'),
		('Jacob'),
		('Sara'),
		('Peter'),
		('Walter'),
		('David'),
		('Ross'),
		('Arnold'),
		('Leo'),
		('Helga'),
		('Billy'),
		('Alex'),
		('Stiven'),
		('Nina'),
		('Hope'),
		('Iris'),
		('Bob'),
		('Lincoln'),
		('Tim'),
		('Gven'),
		('Marcy'),
		('Nancy'),	
		('Erik'),
		('Odry'),
		('Natan'),
		('Astrid'),
		('Mark'),
		('Penelope'),
		('Kannie'),
		('Oliver'),
		('Harry'),
		('Aaron'),
		('Melissa'),
		('Manuel'),
		('Ahmed'),
		('Sofia'),
		('Chloe'),
		('Barry'),	
		('Glen'),
		('Teresa'),
		('Lisa'),
		('Greg'),
		('Madison'),
		('Lee'),
		('Adam'),
		('Vicki'),
		('Misty'),
		('Eve'),
		('Heather'),
		('Deborah'),
		('Lauren'),
		('Misha'),
		('Jasper'),
		('Clark'),
		('Blake');

create table salary(
id serial primary key,
monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values (66, 18),
    (5, 7),
    (11, 10),
    (1, 3),
    (7, 2),
    (2, 11),
    (8, 4),
    (4, 15),
    (3, 9),
    (29, 3),
    (35, 10),
    (6, 6),
    (28, 12),
    (65, 1),
    (16, 7),
    (21, 10),
    (18, 3),
    (70, 2),
    (32, 11),
    (48, 4),
    (44, 15),
    (37, 9),
    (19, 3),
    (33, 17),
    (61, 6),
    (27, 12),
    (56, 18),
    (59, 7),
    (42, 10),
    (51, 3),
    (96, 19),
    (93, 11),
    (95, 4),
    (90, 15),
    (92, 9),
    (81, 3),
    (97, 10),
    (86, 6),
    (80, 12),
    (89, 1);

create table roles(
id serial primary key,
role_name int not null unique
);

alter table roles
alter column role_name type varchar(30);

insert into roles(role_name)
values  ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');


create table roles_employee(
id serial primary key,
emoloyee_id int not null unique references employees(id),
role_id int not null references roles(id)
);

insert into roles_employee(emoloyee_id, role_id)
values (66, 18),
    (5, 7),
    (11, 10),
    (1, 3),
    (7, 2),
    (2, 11),
    (8, 4),
    (4, 15),
    (3, 9),
    (29, 3),
    (35, 10),
    (6, 6),
    (28, 12),
    (65, 1),
    (16, 7),
    (21, 10),
    (18, 3),
    (70, 2),
    (32, 11),
    (48, 4),
    (44, 15),
    (37, 9),
    (19, 3),
    (33, 17),
    (61, 6),
    (27, 12),
    (56, 18),
    (59, 7),
    (42, 10),
    (51, 3),
    (46, 19),
    (13, 11),
    (15, 4),
    (20, 15),
    (22, 9),
    (41, 3),
    (57, 10),
    (36, 6),
    (50, 12),
    (69, 1);

select *from employees;
select *from salary;
select *from employee_salary;
select *from roles;
select *from roles_employee;
   
   
