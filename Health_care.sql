---Doctor Dataset---
create table doctors(
doctor_id bigint primary key,
First_name varchar(50) not null,
Last_name varchar(50),
dept_name varchar(50) not null,
contact varchar(10) unique check(contact NOT LIKE '%[^0-9]%')
);

---Insertion of Doctor list--
insert into doctors values
(1001,'Narayan',Null,'Neurology','9567845321'),
(1002,'Rajeev','Shaneoy','Nephrology','9567855566'),
(1003,'Vedha','Patkar','General','9145338742'),
(1004,'Keshav','B','ENT','6754822211'),
(1006,'Naina','Sahani','Ayurvedic','8767766221'),
(1005,'Arjun','Pandit','General','9119119119'),
(1007,'Narayan','Malvi','General','7654321098'),
(1010,'Veena','Kamath','ENT','9567845322'),
(1008,'Alvin','Dsouza','Ayurvedic','9546565565'),
(1000,'Chaitra','Kulal','Cardiology','9567846632'),
(1009,'Chinmay','Naik','General','8867754321'),
(1012,'Krishna','Shastri','Dental','6466557890');

select * from doctors ;

--Patients Details ---
create table patient_records(
p_id bigint primary key,
First_name varchar(50) not null,
Last_name varchar(50),
gender varchar(10) not null,
age int,
address varchar(50) not null,
contact varchar(10) unique check(contact NOT LIKE '%[^0-9]%')
);

-- Patient Data --
insert into patient_records values
(10001,'Shabeena','Banu','F',39,'Bengaluru','9999998833'),
(10002,'Krishna',Null,'M',58,'Bengaluru','6754322109'),
(10003,'Vikas','Jain','M',25,'Tumkur','8899998833'),
(10004,'Ajesh','Dsilva','M',39,'Bengaluru','699698632'),
(10005,'Daisy','Shah','F',32,'Hosur','9229998811'),
(10006,'Mohmmad','Bilal','M',48,'Tumkur','8756332100'),
(10007,'Sharada','Patil','F',12,'Bengaluru','9944563231'),
(10008,'Kirthi','Jain','F',79,'Bengaluru','8766789944'),
(10009,'Laxmi','Bai','T',31,'Hosur','6464655321'),
(10010,'Bhagya','Gowda','F',20,'Hosur','9199213244'),
(10011,'Manish','Paul','M',39,'Tumkur','8484883209'),
(10012,'Raj','Kundra','M',66,'Guntur','9010876120'),
(10013,'Yash','Jogi','M',48,'Udupi','6909896654'),
(10014,'Aruna',Null,'F',54,'Bengaluru','7878902345'),
(10015,'Raksitha','Nayak','F',21,'Udupi','8483412141'),
(10016,'Jayantha','Nayak','M',22,'Udupi','9483412141'),
(10017,'Shabeer','Ahmed','F',82,'Hosur','8876546123'),
(10018,'Shabeena',Null,'F',67,'Tumkur','9483413132'),
(10019,'Jayantha','Naik','M',40,'Mangaluru','9994448833'),
(10020,'Neeraja','Patil','F',90,'Mangaluru','9995658833'),
(10021,'Vinod','Aiyer','M',76,'Tumkur','8879998833'),
(10022,'Vishist',Null,'M',51,'Kolar','9234998833'),
(10023,'Neha','Singh','F',22,'Hosur','9991098833'),
(10024,'Nagashree','Pai','F',29,'Tumkur','9999998125'),
(10025,'Nirmala','S','F',10,'Kolar','9999998558');

select * from checkup_details;
-- Drug Details--
create table drug_details(
drug_id int primary key,
drug_name varchar(50) not null,
Age_limit int not null,
Available_form varchar(50)
);

-- Drug Dataset --
insert into drug_details values(101,'paracetamol',10,'Tablet'),  -- cold
(102,'losartan',6,'Tablet'),  -- Heart problems
(103,'Quinapril',18,'Tablet'), ---High BP
(104,'Benadryl',2,'Sirup'),  --Cough
(105,'hydrogen peroxide',18,'Liquid'),  -- cleansing
(106,'hydroxychloroquine',6,'Tablet'),  -- Malaria
(107,'aspirin',16,'Tablet'),  -- headache
(108,'Hydrogel',0,'Gel'),  -- Wonds
(109,'Atonide',1,'Gel'), -- rashes
(110,'Hyoscine hydrobromide',4,'Tablet'),  --Vomitting
(111,'Midodrine',5,'Tablet'),  --Dizziness
(112,'Bismuth subsalicylate',12,'Tablet'), --loose motion
(113,'NSAID',6,'Tablet'),  ---Pain killers
(114,'Albuterol sulfate',4,'Aerosol'),    ---Astama
(115,'acetaminophen',6,'Aerosol'),  -- fever
(116,'Ferrous Sulfate',12,'Tablet'),    ---Blood count increase
(117,'levothyroxine',6,'Tablet'),   --Thyroid
(118,'Insulin',10,'Injection'),  -- sugar
(119,'Fludrocortisone',9,'Tablet');   -- low BP

select * from drug_details;

-- Hospital Table---
create table hospital_list(
hospital_id int primary key,
hospital_name varchar(50) unique not null,
city varchar(50) not null
);

-- List of Hospitals ---
insert into hospital_list values(101,'Manipal Hospital','Bengaluru'),
(102,'Cura Hospitals','Bengaluru'),(103,'Mallige Hospital','Bengaluru'),(104,'Shree Chowdeshwari Hospital','Kolar'),
(105,'Hope Hospital','Kolar'),(106,'Kasturba Hospital','Tumkur'),(107,'Akshaya Hospital','Tumkur'),
(108,'Vijay Hospital','Tumkur'),(109,'Kauvery Hospital','Hosur'),(110,'Hyma Hospitals','Guntur');

-- Check up details --
create table checkup_details(
chkup_num int,
chkup_date date check (chkup_date <=CAST(GETDATE() AS Date)),
patient_id bigint not null,
doctor_id bigint not null,
hospital_id int not null,
problem varchar(50) not null,
chkup_suggested varchar(50),
BP_high int,
BP_low int,
sugar_level float,
p_drug_id int ,
primary key(chkup_num,chkup_date)
);

-- Checkup dataset --
insert into checkup_details values(1,'2022-10-04',10010,1001,102,'Anckle twist','X-RAY',100,60,236.5,113),
(2,'2022-10-04',10022,1001,110,'Fever',Null,110,80,110,115),
(3,'2022-10-04',10001,1003,102,'Chest pain','CT-Scan',70,100,78,102),
(4,'2022-10-04',10003,1002,102,'Smoking','Blood test',140,110,159,Null),
(5,'2022-10-04',10002,1005,102,'Regular Chekup','X-RAY',100,60,236.5,113),
(6,'2022-10-04',10021,1003,102,'Bike Accident','X-RAY',120,90,110,113),
(7,'2022-10-04',10019,1001,102,'stomach Pain',Null,110,60,98,113),
(8,'2022-10-04',10002,1003,102,'Shoulder pain','X-RAY',100,60,236.5,113),
(9,'2022-10-04',10010,1002,102,'X-RAY','Back to Doctor',Null,Null,Null,Null),
(10,'2022-10-04',10013,1006,102,'High fever','Blood test',140,90,90,115),
(11,'2022-10-04',10005,1005,102,'Cold',Null,120,70,90,101),
(12,'2022-10-04',10009,1006,102,'Sugar',Null,100,60,160,118),
(13,'2022-10-04',10014,1001,102,'Vommiting','X-RAY',100,60,101,113),
(14,'2022-10-04',10021,1002,102,'Blood test','Back to Doctor',Null,Null,Null,Null),
(15,'2022-10-04',10001,1006,102,'CT-scan','Back to Doctor',Null,Null,Null,Null),
(16,'2022-10-04',10009,1003,102,'Low BP',Null,90,60,162,119),
(17,'2022-10-04',10012,1002,102,'Hand fracture','X-RAY',110,80,125,113),
(18,'2022-10-04',10014,1005,102,'Accident',Null,120,80,120,113),
(19,'2022-10-04',10002,1002,102,'Loose Motion',Null,110,70,155,113),
(20,'2022-10-04',10007,1004,102,'Cough',Null,110,80,110,113),
(21,'2022-10-04',10012,1004,102,'X-RAY','Back to Doctor',Null,Null,Null,Null),
(22,'2022-10-04',10011,1004,102,'Rashes',Null,120,80,125,113),
(1,'2022-10-03',10015,1001,102,'Headache','X-RAY',100,60,236.5,113),
(2,'2022-10-03',10022,1003,102,'Routine checkup','Blood test',100,60,150,113),
(3,'2022-10-03',10025,1001,102,'Fever',Null,100,60,236.5,113),
(4,'2022-10-03',10025,1005,102,'High BP','BP check',100,60,105,113),
(5,'2022-10-03',10008,1001,102,'Cold',Null,100,60,236.5,113),
(6,'2022-10-03',10009,1005,102,'Urine Test','Back to doctor',Null,Null,162,null),
(7,'2022-10-03',10024,1003,102,'Bone fracture','X-RAY',100,60,145,113),
(8,'2022-10-03',10003,1004,102,'Vommiting',Null,100,60,120,113),
(9,'2022-10-03',10007,1006,102,'Dizziness',Null,100,60,140,113),
(10,'2022-10-03',10001,1002,102,'X-RAY','Back to doctor',100,60,90,113),
(11,'2022-10-03',10018,1004,102,'BP Check','Back to doctor',100,60,100,113),
(12,'2022-10-03',10006,1002,102,'Blood test','Back to doctor',100,60,110,113),
(13,'2022-10-03',10006,1003,102,'Back pain',Null,100,60,90,113),
(1,'2022-10-02',10012,1002,102,'handBurn',Null,130,80,105,113),
(2,'2022-10-02',10008,1006,102,'Headache','X-RAY',120,95,120,113),
(3,'2022-10-02',10015,1001,102,'Fever','X-RAY',100,70,90,113),
(4,'2022-10-02',10015,1002,102,'Routine checkup','X-RAY',110,75,120,113),
(5,'2022-10-02',10003,1005,102,'Cold','X-RAY',130,90,80,113),
(6,'2022-10-02',10011,1003,102,'Cough','X-RAY',120,100,110,113),
(7,'2022-10-02',10023,1006,102,'Thyroide','X-RAY',110,80,130,113),
(8,'2022-10-02',10011,1003,102,'Leg wounds','X-RAY',120,90,115,113),
(9,'2022-10-02',10010,1004,102,'Eye problems','X-RAY',110,60,90,113),
(10,'2022-10-02',10023,1002,102,'Tooth pain','X-RAY',110,80,115,113),
(11,'2022-10-02',10010,1006,102,'Cold','X-RAY',100,60,100,113),
(12,'2022-10-02',10017,1004,102,'Anckle twist','X-RAY',130,100,120,113),
(13,'2022-10-02',10009,1004,102,'Low BP','Urine test',90,60,146,Null),
(14,'2022-10-02',10019,1002,102,'High BP','X-RAY',150,110,135,113),
(15,'2022-10-02',10017,1003,102,'Bone fracture','X-RAY',110,80,112,113);

alter table checkup_details add cost bigint;

update checkup_details set cost=200 where chkup_suggested is null;

update checkup_details set cost=500 where chkup_suggested<>'X-RAY';

update checkup_details set cost=800 where chkup_suggested='X-RAY';
-- Foreign key for Patient and Checkup tables --
alter table checkup_details add constraint FK_patient foreign key(patient_id) references patient_records(p_id);

-- Foreign key for Doctor and Checkup tables --
alter table checkup_details add constraint FK_doctor foreign key(doctor_id) references doctors(doctor_id);

-- Foreign key for Drug and Checkup tables --
alter table checkup_details add constraint FK_drug foreign key(p_drug_id) references drug_details(drug_id);

-- Foreign key for Hospital and Checkup tables --
alter table checkup_details add constraint FK_hospital foreign key(hospital_id) references hospital_list(hospital_id);

select * from checkup_details as cd full outer join patient_records as pr on pr.p_id = cd.patient_id ;

select * from checkup_details as cd inner join patient_records as pr on pr.p_id = cd.patient_id ;

select * from checkup_details as cd right join patient_records as pr on pr.p_id = cd.patient_id ;

select * from checkup_details as cd left join patient_records as pr on pr.p_id = cd.patient_id ;

create view checkup_view as select * from checkup_details cd where chkup_suggested='X-Ray';

select * from checkup_view ;

 select * from checkup_details cd;