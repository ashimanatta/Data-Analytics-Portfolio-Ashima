create database finance;
SELECT COUNT(*) FROM cc_data;
# Calculate the total number of transactions in the cc_data table
select count(*) as total_transactions from cc_data;
#Identify the top 10 most frequent merchants in the cc_data table
select merchant,count(*) as transaction_count from cc_data 
group by merchant
order by transaction_count
limit 10;
#Find the average transaction amount for each category of transactions in the cc_data table 
select avg(amt), category from cc_data group by category;
# Determine the number of fraudulent transactions and the percentage of total transactions that they represent 
select sum(is_fraud) as fraud_transactions, (sum(is_fraud) / count(*) * 100) as fraud_percentage from cc_data;
# Join the cc_data and location_data tables to identify the latitude and longitude of each transaction
select c.trans_date_trans_time, c.cc_num, c.merchant, l.lat, l.long from cc_data c
join location_data l
on c.cc_num = l.cc_num;
# Identify the city with the highest population in the location_data table
SELECT c.city, MAX(c.city_pop) AS highest_population
FROM cc_data c
JOIN location_data l
ON c.cc_num = l.cc_num
GROUP BY c.city
ORDER BY highest_population DESC
LIMIT 1;
# Find the earliest and latest transaction dates in the cc_data table 
select min(trans_date_trans_time) as earliest_date, max(trans_date_trans_time) from cc_data;
# What is the total amount spent across all transactions in the cc_data table? 
select sum(amt) as total_amount from cc_data;
# How many transactions occurred in each category in the cc_data table? 
select count(amt) as total_trasactions, category from cc_data group by category;
# What is the average transaction amount for each gender in the cc_data table?
select avg(amt) as average_transaction_amt, gender from cc_data group by gender;
# Which day of the week has the highest average transaction amount in the cc_data table?
select avg(amt) as average_transaction_amount,
dayname(str_to_date(trans_date_trans_time, '%d-%m-%Y %H:%i')) as day_of_week
from cc_data
group by day_of_week
order by average_transaction_amount desc
limit 1;
describe cc_data;