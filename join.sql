CREATE table j_employee2(
id int primary key,
Name varchar(20),
dept varchar(20),
sal float,
zipcode int
);

create table j_address(
zipcode int,
city varchar(20),
country varchar(20)
);

insert into j_employee2 values
(1,'Jay','HR',25000,576001),
(2,'Abhi','HR',24000,583222),
(3,'Ram','IT',20000,576111),
(4,'clerk','HR',24000,583222),
(5,'vihan','IT',20000,576111),
(6,'Mann','HR',24000,583222),
(7,'donn','IT',20000,576111),
(8,'Mohan','Dev',28000,676789);

insert into j_address values
(576001,'Bengaluru','India'),
(576101,'Bengaluru','Nepal'),
(576111,'Bengaluru','England'),
(583222,'Gadag','India');

select j.id,j.name,a.zipcode,a.city 
from j_employee2 as j inner join j_address as a
on j.zipcode=a.zipcode; 

select j.id,j.name,a.zipcode,a.city 
from j_employee2 as j right join j_address as a
on j.zipcode=a.zipcode; 

select j.id,j.name,a.zipcode,a.city 
from j_employee2 as j lrft join j_address as a
on j.zipcode=a.zipcode; 

select j.id,j.name,a.zipcode,a.city 
from j_employee2 as j OUTER full join j_address as a
on j.zipcode=a.zipcode; 

-- cross join
select j.id,j.name,a.zipcode,a.city 
from j_employee2 as j,j_address as a;
