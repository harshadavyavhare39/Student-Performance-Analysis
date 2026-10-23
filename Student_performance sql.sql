create database Students_performance;
use Students_performance;
select * from students_performance;

-- Question-- 

-- Q1 Total Students
select count(*) Total_students from students_performance;

-- Q2 Total Score
select sum(Total_Score) from students_performance;

-- Q3 Average Score greater than students
select name, Average_score from students_performance
where Average_Score > 4;

-- Q4 Which are students excellent
select name , Average_Score, performance_level from students_performance
where Performance_Level = 'Excellent';

-- Q5 Highest Average Score
select max(Average_Score) as Highest_Score from
students_performance ;

-- Q6 Lowest Average Score
select min(Average_Score) as Lowest_Score from 
students_performance ;

-- Q7 How many Students for performance level
select Performance_level, count(*) as Students_count
from students_performance 
group by Performance_level;

-- Q8 Assigenment in highest score
select name, assignment from students_performance
order by assignment desc limit 1;

-- Q9 Students Average score in low 
select name,average_score from students_performance
where average_score > 3;

-- Q10 Performance Level highest score
select Performance_Level,
      max(Average_score) as Highest_Score
from students_performance 
group by Performance_Level;


