


1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

create table employees2 (
id serial primary key,
employee_name Varchar(50)  not null);

2. Наполнить таблицу employee 70 строками.


insert into employees2 (employee_name)
values ('Rachel Ramirez'),
('Michelle Price'),
('Helen Webb'),
('Margie Carter'),
('John Burke'),
('Wayne George'),
('Rachel Ramirez '),
('Michelle Price'),
('Helen Webb'),
('Margie Carter'),
('John Burke'),
('Wayne George'),
('Bradley Hall'),
('Julia Colon'),
('Eleanor Jensen'),
('Kelly Anderson'),
('Cathy Harris'),
('Laura Morales'),
('Mary Kelly'),
('James Ortega'),
('William Davis'),
('Norman Salazar'),
('Alice Hill'),
('Maria White'),
('Donald Myers'),
('Grace Johnson'),
('Debra Wilson'),
('Mary Daniel'),
('Mary Wright'),
('Susan Stephens'),
('Nelson Morales'),
('Kim Smith'),
('James Butler'),
('Brian Elliott'),
('Kevin McKenzie'),
('Dale Robertson'),
('Greg Wright'),
('Tom Daniels'),
('Jonathan Cook'),
('Susan Banks'),
('Lisa Nelson'),
('Mary Hubbard'),
('Paul Wilson'),
('Sharon Barrett'),
('Robert Phillips'),
('Amber Leonard'),
('Anita Pope'),
('Erin Anderson'),
('Juanita Thomas'),
('Christina Hunt'),
('Courtney Brown'),
('Darlene Jones'),
('Judy Dean'),
('Micheal Colon'),
('Diana Brown'),
('David Gonzalez'),
('Julia Riley'),
('Robert Bell'),
('Bernice Garner'),
('Alice Hart'),
('Agnes Jones'),
('Virginia Burke'),
('Wendy Welch'),
('Joe Barker'),
('Anne Kelly'),
('Jesse Johnson'),
('William Thomas'),
('Margie Smith'),
('Leonard Lee'),
('James Grant');

3.Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null

create table salary2 (
id serial  primary key,
monthly_salary int not null);

4. Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500

insert into salary2 (monthly_salary)
values ('1000'),
('1100'),
('1200'),
('1300'),
('1400'),
('1500'),
('1600'),
('1700'),
('1800'),
('1900'),
('2000'),
('2100'),
('2200'),
('2300'),
('2400'),
('2500');

5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null


create table employee_salary (
id serial  primary key,
employee_id int not null unique,
salary_id int not null );

6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (1,1),
	   (51,2),
	   (80,3),
	   (52,4),
	   (3,5),
	   (53,15),
	   (4,14),
	   (76,13),
	   (5,12),
	   (55,11),
	   (6,7),
	   (32,7),
	   (77,8),
	   (8,9),
	   (34,10),
	   (9,10),
	   (36,9),
	   (10,8),
	   (38,7),
	   (74,6),
	   (40,5),
	   (81,15),
	   (22,11),
	   (18,12),
	   (78,13),
	   (19,14),
	   (25,15),
	   (79,14),
	   (65,13),
	   (26,12),
	   (64,11),
	   (27,10),
	   (82,9),
	   (28,8),
	   (62,7),
	   (29,5),
	   (61,4),
	   (30,3),
	   (88,2),
	   (90,1);

	  
	  7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique

	  create table roles2 (
	  id serial primary key,
      role_name int not null unique
);

8.Поменять тип столба role_name с int на varchar(30)

alter table roles2 alter column role_name type varchar(30);

9. Наполнить таблицу roles 20 строками

insert into roles2 (role_name)
values ('Junior Python developer'),
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
	
	10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

	create table roles_employee2 (
    id serial  primary key,
    employee_id int not null unique ,
    role_id int not null,
    foreign key (employee_id)
    references employees2 (id),
    foreign key (role_id)
    references roles2 (id) );
   
   11. Наполнить таблицу roles_employee 40 строками:
   
   insert into roles_employee2 (employee_id, role_id)
   values (3,1),
		(1,2),
		(4,5),
		(5,8),
		(7,2),
		(9,1),
		(11,10),
		(13,11),
		(22,13),
		(32,12),
		(65,14),
		(36,12),
		(28,14),
		(10,15),
		(20,3),
		(30,3),
		(40,1),
		(50,4),
		(60,17),
		(70,18),
		(35,15),
		(37,11),
		(47,13),
		(48,17),
		(51,14),
		(52,16),
		(53,19),
		(54,20),
		(56,15),
		(57,12),
		(43,14),
		(8,15),
		(68,9),
		(21,7),
		(55,16),
		(49,3),
		(46,6),
		(38,7),
		(64,8),
		(19,14);
	  
select * from employees2;
select * from employee_salary ;
select * from roles_employee2 ;