-- Table creation with primary key, not null , check constraint
create table orders(
 order_id int primary key,
 order_name char[20] not null,
 order_date date not null 
 constraint OD check(order_date<CURRENT_DATE)
 );

-- Insertion
insert into orders values(1,'JAY','2022-01-04');
insert into orders values(2,'abhi','2021-12-31');

-- Table with constraints Foreign Key, Unique
create table customers(
 c_id int primary key,
 c_name char[20] unique,
 c_mobile int not null,
 c_address varchar[20] not null,
 c_email varchar[20],
 c_order_id int,
 foreign key(c_order_id) references orders(order_id)
 CONSTRAINT SD_CHK check((c_mobile>=2000000000 and c_mobile<=9999999999) and 
c_email like '%@%._%')
 ); 

insert into customers values(100,'JAY',9411402040,'UDUPI','jay@gmail.com',1);
insert into customers values(101,'abhi',9483999999,'UDUPI','abhi@gmail.com',2);

-- Display
select * from customers;
