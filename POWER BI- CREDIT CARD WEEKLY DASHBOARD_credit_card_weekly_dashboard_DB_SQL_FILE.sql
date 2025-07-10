create table cc_details(
Client_Num int primary key,
Card_Category varchar check(Card_Category in ('Blue','Gold','Silver','Platinum')),
Annual_Fees int not null,
Activation_30_Days int,
Customer_Acq_Cost int,
Week_Start_Date date,
Week_Num varchar,
Qtr varchar,
current_year int,
Credit_Limit numeric,
Total_Revolving_Bal int,
Total_Trans_Amt int,
Total_Trans_Ct int,
Avg_Utilization_Ratio numeric,
Use_Chip varchar,
Exp_Type varchar,
Interest_Earned numeric,
Delinquent_Acc varchar
);

select * from cc_details;

copy cc_details 
from 'E:/Harsh/DATA ANALYTICS CLASSES- ARC TECHNOLOGIES/DA PROJECTs/POWER BI PROJECTS/POWER BI- CREDIT CARD WEEKLY DASHBOARD/DATA SOURES- Credit Card Financial Dashboard/credit_card.csv' 
DELIMITER ','
csv header;

select * from cc_details;



create table cust_details(
Client_Num int,
Customer_Age int,
Gender varchar,
Dependent_Count int,
Education_Level varchar,
Marital_Status varchar,
state_cd varchar,
Zipcode varchar,
Car_Owner varchar,
House_Owner varchar,
Personal_loan varchar,
contact varchar,
Customer_Job varchar,
Income int,
Cust_Satisfaction_Score int
);

select * from cust_details;

copy cust_details 
from 'E:/Harsh/DATA ANALYTICS CLASSES- ARC TECHNOLOGIES/DA PROJECTs/POWER BI PROJECTS/POWER BI- CREDIT CARD WEEKLY DASHBOARD/DATA SOURES- Credit Card Financial Dashboard/customer.csv' 
DELIMITER ','
csv header;

select * from cust_details;



--now adding additional data to the table cc_details

copy cc_details 
from 'E:/Harsh/DATA ANALYTICS CLASSES- ARC TECHNOLOGIES/DA PROJECTs/POWER BI PROJECTS/POWER BI- CREDIT CARD WEEKLY DASHBOARD_07-06-2025/DATA SOURES- Credit Card Financial Dashboard_07-06-2025/cc_add.csv' 
DELIMITER ','
csv header;

select * from cc_details;





-- same adding additional data to the table cust_details

copy cust_details 
from 'E:/Harsh/DATA ANALYTICS CLASSES- ARC TECHNOLOGIES/DA PROJECTs/POWER BI PROJECTS/POWER BI- CREDIT CARD WEEKLY DASHBOARD_07-06-2025/DATA SOURES- Credit Card Financial Dashboard_07-06-2025/cust_add.csv' 
DELIMITER ','
csv header;

select * from cust_details;











