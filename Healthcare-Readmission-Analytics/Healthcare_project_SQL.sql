create database healthcare;
use healthcare;
ALTER TABLE diabetic_data_cleaned RENAME TO diabetic_dataset;

#Calculate the total number of patient encounters in the healthcare dataset
select count(encounter_id) as total_number_of_patient_encounters from diabetic_dataset;

#Identify the top 10 most frequent diagnoses in the dataset
select diag_1, count(diag_1) as frequency from diabetic_dataset 
group by diag_1 
order by frequency desc
limit 10;

#Calculate the average length of hospital stay for each admission type 
select avg(time_in_hospital) as average_length, admission_type_id from diabetic_dataset group by admission_type_id;

#Determine the number of readmitted patients and the percentage of total encounters that they represent 
select count(readmitted) as readmitted_count, ROUND(COUNT(readmitted) * 100.0 / 
             (SELECT COUNT(readmitted) FROM diabetic_dataset)) AS percentage
from diabetic_dataset 
where readmitted != "NO";

#Identify the age distribution of patients 
select count(age) as age_distribution, age as age_bucket from diabetic_dataset
group by age;

#Identify the most common procedures performed during patient encounters 
select num_procedures, count(num_procedures) as frequency from diabetic_dataset
group by num_procedures
order by frequency desc;

#Calculate the average number of medications prescribed for patients in each age group 
select avg(num_medications), age from diabetic_dataset group by age order by age;

#Identify the distribution of readmission rates across different payer codes 
SELECT payer_code,
       SUM(CASE WHEN readmitted != 'NO' THEN 1 ELSE 0 END) AS readmitted_count,
       COUNT(*) AS total_encounters,
       ROUND(
           (SUM(CASE WHEN readmitted != 'NO' THEN 1 ELSE 0 END) * 100.0)
           / COUNT(*),
       2) AS readmission_rate
FROM diabetic_dataset
GROUP BY payer_code
ORDER BY readmission_rate DESC;