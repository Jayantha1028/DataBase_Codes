create table jn_department(
dept_id int primary key,
dept_name varchar(20) not null,
manager_id int unique
);
insert into jn_department values(1,'IT',220);
insert into jn_department values(2,'DEV',005);
insert into jn_department values(3,'HR',120);

select * from jn_department;

create table jn_employee(
emp_id int primary key,
emp_name varchar(50) not null,
location varchar(20) not null,
dept_id int not null
foreign key(dept_id) references jn_department(dept_id)
);

Insert into jn_employee values(100,'abhi','udupi',1);
Insert into jn_employee values(101,'sushmitha','Mangalore',2);
Insert into jn_employee values(102,'Sweekar','Shivamogga',3);

create table jn_location(
location varchar(50) primary key,
state varchar(50) not null
);

Insert into jn_location values('udupi','KAR');
Insert into jn_location values('Mangalore','KAR');
Insert into jn_location values('Shivamogga','KAR');

select * from jn_location;

select * from jn_employee;