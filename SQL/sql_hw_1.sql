------------------------1) Создать таблицу employees---------------------------------------------
						- id. serial,  primary key,
						- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name Varchar(50)
);

------------------------2) Наполнить таблицу employee 70 строками--------------------------------

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

	--------------------------------3) Создать таблицу salary----------------------------------------
									- id. Serial  primary key,
									- monthly_salary. Int, not null
									
create table salary(
id serial primary key,
monthly_salary int not null
);

------------------------------------4) Наполнить таблицу salary 15 строками---------------------------
 
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

-------------------------------------5)Создать таблицу employee_salary-------------------------------------
									- id. Serial  primary key,
									- employee_id. Int, not null, unique
									- salary_id. Int, not null

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

---------------------------------6)Наполнить таблицу employee_salary 40 строками:---------------------------
								- в 10 строк из 40 вставить несуществующие employee_id

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

 --------------------------------------7)Создать таблицу roles----------------------------------------------
										- id. Serial  primary key,
										- role_name. int, not null, unique

create table roles(
id serial primary key,
role_name int not null unique
);

-----------------------------------8)Поменять тип столба role_name с int на varchar(30)---------------------

alter table roles
alter column role_name type varchar(30);

-----------------------------------9)Наполнить таблицу roles 20 строками------------------------------------- 

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

-----------------------------10)Создать таблицу roles_employee-----------------------------------------------
							- id. Serial  primary key,
							- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
							- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial primary key,
emoloyee_id int not null unique references employees(id),
role_id int not null references roles(id)
);

------------------------------11)Наполнить таблицу roles_employee 40 строками-------------------------------

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

----------------------------------------Проверка вывода данных---------------------------------------------   
   
select *from employees;
select *from salary;
select *from employee_salary;
select *from roles;
select *from roles_employee;
   
   
