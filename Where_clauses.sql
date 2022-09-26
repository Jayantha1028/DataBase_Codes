-- Equal condition
select * from DLITHE.DBO.S_HREMPLOYEES where DEPARTMENT_ID =80;

-- Greater than or equal to clause
select EMPLOYEE_ID,FIRST_NAME ,SALARY from DLITHE.DBO.S_HREMPLOYEES where
SALARY>=5000;

-- Not equal clause
select * from DLITHE.DBO.S_HREMPLOYEES where JOB_ID != 'SH_CLERK';

-- Not equal clause
select EMPLOYEE_ID,SALARY,DEPARTMENT_ID from DLITHE.DBO.S_HREMPLOYEES where
DEPARTMENT_ID <> 50;

-- AND clause
select * from DLITHE.DBO.S_HREMPLOYEES where DEPARTMENT_ID =50 and SALARY 
<5000;

--OR clause
select * from DLITHE.DBO.S_HREMPLOYEES where DEPARTMENT_ID =50 or
DEPARTMENT_ID =90;

-- Between Clause
select EMPLOYEE_ID,FIRST_NAME ,LAST_NAME ,EMAIL ,PHONE_NUMBER from
DLITHE.DBO.S_HREMPLOYEES where HIRE_DATE between '2001-01-01 00:00:00.000' and '2005-
12-31 00:00:00.000';

--  '%' using for pattern
select * from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME ='%ja%';

-- Not like clause
select * from DLITHE.DBO.S_HREMPLOYEES where PHONE_NUMBER not LIKE '650%';

-- Not null Clause
select * from DLITHE.DBO.S_HREMPLOYEES where COMMISSION_PCT is not null;

-- Is null Clause
select * from DLITHE.DBO.S_HREMPLOYEES where MANAGER_ID is null;

-- In clause
select * from DLITHE.DBO.S_HREMPLOYEES where EMPLOYEE_ID in (100,150,200,250);