create database Student_health_dartabase;
use student_health_dartabase;

select * from student_health_data;

-- Clean the gender column

create table new_sthd as
select * from student_health_data;


select * from new_sthd;

update new_sthd
set Gender = 'Male'
where Gender = 'M';

update new_sthd
set Gender = 'Female'
where Gender = 'F';

alter table new_sthd
drop `MyUnknownColumn_[6]`;

-- Question 1: Is there a difference in mental health risk levels between male and female students?

select * from new_sthd;

SELECT
    gender,
    health_risk_level,
    COUNT(*) AS student_count,
    COUNT(*) * 100.0 
        / SUM(COUNT(*)) OVER (PARTITION BY gender) 
        AS percentage
FROM new_sthd
GROUP BY gender, health_risk_level;

-- 100 males have a higher percentage of a lower risk level than 90 females. 
-- 343 males have a less percentage of a moderate risk level than 329 females.
-- 6 males have a higher health_risk level than 62 females.

-- Question 2: How does heart rate relate to mental health risk levels?

SELECT 
    health_risk_level,
    COUNT(*) AS student_count,
    AVG(heart_rate) AS avg_heart_rate,
    MIN(heart_rate) AS min_heart_rate,
    MAX(heart_rate) AS max_heart_rate
FROM new_sthd
GROUP BY health_risk_level
ORDER BY avg_heart_rate DESC;

-- Overall, for each health risk level, the minimum heart rate is 50.
-- For a low health risk, the average heart rate is 70, while the maximum heart rate is 96. (Found among 190 students)
-- For a moderate health risk, the average heart rate is 69, and the maximum heart rate is 99, the highest maximum heart rate. (Found amoung 672 students)
-- For a high risk level, the average heart rate was also 69, and the maximum heart rate is 93 (found among 138 students.)


-- Question 3: Does blood pressure (systolic and diastolic) vary across mental health risk categories?


select * from new_sthd;
select Health_Risk_Level, count(*) as student_count,
avg(Blood_Pressure_Systolic) as Average_Sys, 
min(Blood_Pressure_Systolic) as Min_Sys, 
max(Blood_Pressure_Systolic) as Max_Sys,
avg(Blood_Pressure_Diastolic) as Average_Dys, 
min(Blood_Pressure_Diastolic) as Min_Dys, 
max(Blood_Pressure_Diastolic) as Max_Dys
from new_sthd
group by Health_Risk_Level
order by average_sys;

-- Average blood systolic pressure starts to rise slightly from high to low risk level. 
-- Average blood diastolic rises and then comes down a little bit. 


select * from new_sthd;
-- Question 4: Do self-reported stress levels align with mental health risk levels?

SELECT Health_Risk_Level,
count(*) as count_of_students, 
avg(Stress_Level_Self_Report) as average_self_rp,
max(Stress_Level_Self_Report) as marx_self_rp,
min(Stress_Level_Self_Report) as mirn_self_rp
 from new_sthd
 group by health_risk_level;
 
-- The most stuents who had a moderate risk level had a self report average of 5.
-- The students with a high risk level had a self report of 7.
-- The student swith a low had a self report of 2. 

-- Question 5: How does sleep quality relate to mental health risk levels?

SELECT
    health_risk_level,
    sleep_quality,
    COUNT(*) AS student_count,
    COUNT(*) * 100.0
        / SUM(COUNT(*)) OVER (PARTITION BY health_risk_level) 
        AS percentage
FROM new_sthd
GROUP BY health_risk_level, sleep_quality
ORDER BY health_risk_level, percentage DESC;

-- Poor sleep quality leads to a high risk level.
-- Good sleep quality leads to a lower risk level.
-- Good sleep quality leads to a moderate risk level.




-- Question 6: Does the amount of daily physical activity differ across mental health risk levels?

SELECT
    health_risk_level, physical_activity,
    COUNT(*) AS student_count,
    COUNT(*) * 100.0
        / SUM(COUNT(*)) OVER (PARTITION BY health_risk_level) 
        AS percentage
FROM new_sthd
GROUP BY health_risk_level, physical_activity
ORDER BY health_risk_level, percentage DESC;

-- High phsyical activity results in a high health risk level.
-- Moderate physical activity results in both a low and moderate health risk level.



-- Question 7: Does the amount of time spent on academic tasks relate to mental health risk levels?
select * from new_sthd;


-- Study Hours
sELECT health_risk_level, avg(study_hours) as average_studho,
max(study_hours) as merx_studho, min(study_hours) as minrx_studho, count(*) as cunt_students
from new_sthd
group by health_risk_level;

-- Higher averages of study hours resilts in either moderate or low risk levels.

sELECT health_risk_level, avg(project_hours) as average_pudho,
max(project_hours) as merx_pudho, min(project_hours) as minrx_pudho, count(*) as cunt_students
from new_sthd
group by health_risk_level;

-- The average hours on projects over all health risk levels seem to be the same, but the highest average results in a moderate health risk level.


-- I will edit this and create notes and analysis soon.

