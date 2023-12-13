/*1. Group the customers based on their income type and find the average of their annual income*/

select Income_type,avg(annual_income) from cleaned_data
group by Income_type


/*2.Find the female owners of cars and property.*/

select * from cleaned_data 
where gender='f' and car_owner='y' and property_owner='y';


/*3.Find the male customers who are staying with their families.*/

select * from cleaned_data 
where gender='M' and Housing_type="with parents" 


/*4.Please list the top five people having the highest income.*/

select * from cleaned_data 
order by annual_income desc 
limit 5


/*5.How many married people are having bad credit?*/

select * from cleaned_data 
where marital_status='married' and label=1  ;
#label=1 indicates credit card application rejected which indicates bad credit.


/* 6.What is the highest education level and what is the total count?*/

select count(*) as higher_education from cleaned_data
where education='higher education';


/*7.Between married males and females, who is having more bad credit?*/

select gender,count(gender) from cleaned_data
where marital_status='married' and label=1
group by gender;













