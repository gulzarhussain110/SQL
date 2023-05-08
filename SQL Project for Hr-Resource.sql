create database HR_Resource;
use HR_Resource
select* from Sheet1$
exec sp_rename 'sheet1$.jobtitle','job_title'
select* from Sheet1$;
exec sp_rename 'sheet1$','hr'; -- to rename the table--

select* from hr;
exec sp_rename 'hr.location','loc'; -- to rename and perticular column--
exec sp_rename 'hr.location','loc'; -- to rename and perticular column--
exec sp_rename 'hr.loc','location';

exec sp_help 'hr';  -- to see the describtion of the table--

select birthdate from hr;

select* from hr;

exec sp_help 'hr'
alter table hr alter column birthdate date

exec sp_help 'hr'

alter table hr alter column termdate date

alter table hr add age int

update hr set age=DATEDIFF(YEAR,birthdate,CURRENT_TIMESTAMP) --on the bases of birthdate we find age of employees--
select age, birthdate from hr;

--what is gender break down in the company--

select gender from hr

select gender ,count(*) as totalgender from hr group by gender -- to count total number of employees by genders


--what is rece break down in the company--

select race,count(*) as total_race from hr group by race order by count(*) asc -- show totl race in ascending order by grouping race column--
select race,count(*) as total_race from hr group by race order by count(*) desc-- show totl race in desc order by grouping race column--

-- what is minimum and maximum age of employees --
select MIN(age) as youngest, MAX(age) as oldest from hr where age>=18 AND termdate = NULL

select termdate from hr

update hr set termdate ='0000-00-00' where termdate = Null
select termdate from hr
alter table hr alter column termdate date

exec sp_help 'hr'

select * from hr
