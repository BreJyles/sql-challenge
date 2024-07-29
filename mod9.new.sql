drop table "mod.9.new".employees cascade
drop table "mod.9.new".salaries cascade
drop table "mod.9.new".titles cascade
drop table "mod.9.new".departments cascade
create table "mod.9.new".employees(
	emp_no int not null,
	emp_title_id varchar(30) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(30) not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title_id) references "mod.9.new".titles (title_id)
);

create table "mod.9.new".salaries(
	emp_no int not null,
	salaries int not null,
	primary key (emp_no),
	foreign key (emp_no) references "mod.9.new".employees (emp_no)
);

create table "mod.9.new".titles(
	title_id varchar(30) not null,
	titles varchar(30) not null,
	primary key (title_id)
);

create table "mod.9.new".dept_emp(
	emp_no int not null,
	dept_no varchar(30) not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references "mod.9.new".employees (emp_no),
	foreign key (dept_no) references "mod.9.new".departments (dept_no) 
);

create table "mod.9.new".departments(
	dept_no varchar(30) not null,
	dept_name varchar(30) not null,
	primary key (dept_no)
);

create table "mod.9.new".dept_manager(
	dept_no varchar(30) not null,
	emp_no int not null,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references "mod.9.new".departments (dept_no),
	foreign key (emp_no) references "mod.9.new".employees (emp_no)
);

select * from "mod.9.new".dept_manager;









