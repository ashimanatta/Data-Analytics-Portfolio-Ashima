Create database Employee;
use Employee;
create table data_science_team(
Emp_ID varchar(100) not null,
First_Name varchar(100) not null,
Last_name varchar(100) not null,
Gender varchar(100) not null,
Role varchar(100) not null,
Dept varchar(100) not null,
Exp int not null,
Country varchar(100) not null,
Continent varchar(100) not null);
insert into data_science_team (Emp_ID,First_Name,Last_name,Gender,Role,Dept,Exp,Country,Continent) values
('E005','Eric','Hoffman','M','LEAD DATA SCIENTIST','FINANCE',11,'USA','NORTH AMERICA'),
('E010','William','Butler','M','LEAD DATA SCIENTIST','AUTOMOTIVE',12,'FRANCE','EUROPE'),
('E052','Dianna','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',6,'CANADA','NORTH AMERICA'),
('E057','Dorothy','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',9,'USA','NORTH AMERICA'),
('E204','Karene','Nowak','F','SENIOR DATA SCIENTIST','AUTOMOTIVE',8,'GERMANY','EUROPE'),
('E245','Nian','Zhen','M','SENIOR DATA SCIENTIST','RETAIL',6,'CHINA','ASIA'),
('E260','Roy','Collins','M','SENIOR DATA SCIENTIST','RETAIL',7,'INDIA','ASIA'),
('E403','Steve','Hoffman','M','ASSOCIATE DATA SCIENTIST','FINANCE',4,'USA','NORTH AMERICA'),
('E478','David','Smith','M','ASSOCIATE DATA SCIENTIST','RETAIL',3,'COLOMBIA','SOUTH AMERICA'),
('E505','Chad','Wilson','M','ASSOCIATE DATA SCIENTIST','HEALTHCARE',5,'CANADA','NORTH AMERICA'),
('E532','Claire','Brennan','F','ASSOCIATE DATA SCIENTIST','AUTOMOTIVE',3,'GERMANY','EUROPE'),
('E620','Katrina','Allen','F','JUNIOR DATA SCIENTIST','RETAIL',2,'INDIA','ASIA'),
('E640','Jenifer','Jhones','F','JUNIOR DATA SCIENTIST','RETAIL',1,'COLOMBIA','SOUTH AMERICA');
select * from data_science_team;
create table emp_record_table(
Emp_ID varchar(100) not null,
First_Name varchar(100) not null,
Last_name varchar(100) not null,
Gender varchar(100) not null,
Role varchar(100) not null,
Dept varchar(100) not null,
Exp int not null,
Country varchar(100) not null,
Continent varchar(100) not null,
Salary int not null,
Emp_Rating int not null,
Manager_ID varchar(100),
Proj_ID varchar(100));
describe emp_record_table;
insert into emp_record_table(Emp_ID,First_Name,Last_name,Gender,Role,Dept,Exp,Country,Continent,Salary,Emp_Rating,Manager_ID,Proj_ID) values
('E001','Arthur','Black','M','PRESIDENT','ALL',20,'USA','NORTH AMERICA',16500,5,null,null),
('E005','Eric','Hoffman','M','LEAD DATA SCIENTIST','FINANCE',11,'USA','NORTH AMERICA',8500,3,'E103','P105'),
('E010','William','Butler','M','LEAD DATA SCIENTIST','AUTOMOTIVE',12,'FRANCE','EUROPE',9000,2,'E428','P204'),
('E052','Dianna','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',6,'CANADA','NORTH AMERICA',5500,5,'E083','P103'),
('E057','Dorothy','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',9,'USA','NORTH AMERICA',7700,1,'E083','P302'),
('E083','Patrick','Voltz','M','MANAGER','HEALTHCARE',15,'USA','NORTH AMERICA',9500,5,'E001',null),
('E103','Emily','Grove','F','MANAGER','FINANCE',14,'CANADA','NORTH AMERICA',10500,4,'E001',null),
('E204','Karene','Nowak','F','SENIOR DATA SCIENTIST','AUTOMOTIVE',8,'GERMANY','EUROPE',7500,5,'E428','P204'),
('E245','Nian','Zhen','M','SENIOR DATA SCIENTIST','RETAIL',6,'CHINA','ASIA',6500,2,'E583','P109'),
('E260','Roy','Collins','M','SENIOR DATA SCIENTIST','RETAIL',7,'INDIA','ASIA',7000,3,'E583','NA'),
('E403','Steve','Hoffman','M','ASSOCIATE DATA SCIENTIST','FINANCE',4,'USA','NORTH AMERICA',5000,3,'E103','P105'),
('E428','Pete','Allen','M','MANAGER','AUTOMOTIVE',14,'GERMANY','EUROPE',11000,4,'E001',null),
('E478','David','Smith','M','ASSOCIATE DATA SCIENTIST','RETAIL',3,'COLOMBIA','SOUTH AMERICA',4000,4,'E583','P109'),
('E505','Chad','Wilson','M','ASSOCIATE DATA SCIENTIST','HEALTHCARE',5,'CANADA','NORTH AMERICA',5000,2,'E083','P103'),
('E532','Claire','Brennan','F','ASSOCIATE DATA SCIENTIST','AUTOMOTIVE',3,'GERMANY','EUROPE',4300,1,'E428','P204'),
('E583','Janet','Hale','F','MANAGER','RETAIL',14,'COLOMBIA','SOUTH AMERICA',10000,2,'E001',null),
('E612','Tracy','Norris','F','MANAGER','RETAIL',13,'INDIA','ASIA',8500,4,'E001',null),
('E620','Katrina','Allen','F','JUNIOR DATA SCIENTIST','RETAIL',2,'INDIA','ASIA',3000,1,'E612','P406'),
('E640','Jenifer','Jhones','F','JUNIOR DATA SCIENTIST','RETAIL',1,'COLOMBIA','SOUTH AMERICA',2800,4,'E612','P406');
create table Proj_Table(
Project_ID varchar(100),
Proj_Name varchar(100),
Domain varchar(100),
Start_Date varchar(100),
Closure_Date varchar(100),
Dev_Qtr varchar(100),
Status varchar(100));
Insert into Proj_Table(Project_ID,Proj_Name,Domain,Start_Date,Closure_Date,Dev_Qtr,Status) values
('P103','Drug Discovery','HEALTHCARE','4/6/2021','6/20/2021','Q1','DONE'),
('P105','Fraud Detection','FINANCE','4/11/2021','6/25/2021','Q1','DONE'),
('P109','Market Basket Analysis','RETAIL','4/12/2021','6/30/2021','Q1','DELAYED'),
('P204','Supply Chain Management','AUTOMOTIVE','7/15/2021','9/28/2021','Q2','WIP'),
('P302','Early Detection of Lung Cancer','HEALTHCARE','10/8/2021','12/18/2021','Q3','YTS'),
('P406','Customer Sentiment Analysis','RETAIL','7/9/2021','9/24/2021','Q2','WIP');
Select * from data_science_team;
Select * from emp_record_table;
Select * from Proj_Table;
Select Emp_ID, First_Name, Last_Name, Gender, Dept from emp_record_table;
Select Emp_ID, First_Name, Last_Name, Gender, Dept, Emp_Rating from emp_record_table
where Emp_Rating<2;
Select Emp_ID, First_Name, Last_Name, Gender, Dept, Emp_Rating from emp_record_table
where Emp_Rating>4;
Select Emp_ID, First_Name, Last_Name, Gender, Dept, Emp_Rating from emp_record_table
where Emp_Rating between 2 and 4;
Select concat(First_Name,' ', Last_Name) as Name from emp_record_table where Dept='Finance';
select Emp_ID,First_Name,Role,Dept from emp_record_table where Role='Manager' or Role='President';
select * from emp_record_table where Dept='HEALTHCARE'
union
select * from emp_record_table where Dept='FINANCE';
select Emp_ID,First_Name,Last_name,Role,Dept as Dept, Emp_Rating, max(Emp_Rating) over(partition by Dept) as Max_Dept_Rating from emp_record_table;
select Role, min(Salary) as Min_Salary_by_role from emp_record_table group by Role;
select Role, max(Salary) as Min_Salary_by_role from emp_record_table group by Role;
select Emp_ID,First_Name,Last_name,Exp,dense_rank() over(order by Exp desc) as Rank_by_Exp from emp_record_table;
create view Salary_by_country as select First_Name,Last_name,Salary,Country from emp_record_table where Salary>6000;
select * from Salary_by_country;
select First_Name,Last_name,Exp from emp_record_table where (Select Exp where Exp>10);
call Role_by_Exp_years(3);
Select First_Name,Last_Name,Salary,Emp_Rating,(Salary*0.05)*Emp_Rating as View_Bonus from emp_record_table;
Select Country,Continent,avg(Salary) from emp_record_table group by Country,Continent;