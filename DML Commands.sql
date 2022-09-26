DROP table student;

CREATE Table student(
id int primary key,
Name varchar(100),
marks int check (marks<=100),
Branch_id int not null foreign key references branch(br_id)
);

insert into student values(101,'Jayanth Nayak',95,5);
insert into student values(102,'Brayn Saldana',80,1);

TRUNCATE table student;

insert into student values(101,'Jayanth Nayak',95,5);
insert into student values(102,'Brayn Saldana',80,1);
insert into student values(103,'Abhishek',100,2);
insert into student values(104,' krishna ',60,4);
insert into student values(105,'Krishna K ',45,4);
insert into student values(106,'kay',98,6);
insert into student values(107,'Vishal',78,3);
insert into student values(108,'Vibha',61,2);
insert into student values(109,'june',73,1);
insert into student values(110,'Jake luffy',77,3);
insert into student values(111,' john alter',89,6);
insert into student values(112,' Jake lusy ',39,5);

Delete from student where id < 104 ;

delete from student;

update student set Name='Jayantha' where id=101;

alter table student add contact int;

EXEC sp_RENAME 'dbo.student.contact', 'Mobile', 'COLUMN';

update dbo.student set Name='Anvi';

alter table student drop column contact;

select * from dbo.student s ;