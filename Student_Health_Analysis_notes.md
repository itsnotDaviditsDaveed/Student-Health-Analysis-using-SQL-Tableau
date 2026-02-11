# Student Health Analysis





I will be doing an analysis on student health. I will collect, query, process, clean and retrieve information using SQL, and make visualizations to understand the data using Tableau.



For any general analysis project. It's good to find a problem first. 



A good problem, or question we can ask from this data is this:





**How do physiological, lifestyle, and academic factors influence mental health outcomes in college students?**





## Understanding our Data:



Let's understand exactly what is in our data. 





This dataset I got from Kaggle (here, https://www.kaggle.com/datasets/mjawad17/student-health-data/data)





According to Kaggle: 



"This dataset is about students and their physical health, mental health, and academic performance. It looks at how college students handle health problems when they are under a lot of stress, such as when studying for exams or starting their own businesses. The dataset is designed to help create computer programs that can predict when college students are likely to face health issues due to stress or physical strain. It includes data from devices that track students' activities and self-reported information about their lives and habits."





#### Columns:



Demographic Columns:



* Age --> student age
* Gender --> student gender Male or Female
* Unique Idenitfier, --> a special number to identify the student.





Physiological Data



* Heart Rate --> Heart beats per minute. A higher heart rate means a student is stressed or physically active.
* Blood Pressure --> Higher blood pressure is considered bad. (outside research involved.)
* Systolic Pressure --> the pressure when the heart beats. (The maximum pressure in your artiers when the heart pumps blood)
* Diastolic pressure --> The pressure when the heart rests between beats. This helps asses how well the heart of a student functions.
* Stress Levrels: How stressed a student is at a given time. 

&nbsp;	Understanding stress levels is important as they can reveal whether a student feels overwhelmed and can provide insights into their overall physical health.





Pyschological Data



* Self Reported Stress Levels --> ratings from students on how stressed they feel.
* Mood states --> happy, stressed, or neutral





Academic and Entreprenuerial Activty: how students spend their time on various tasks, including:



* Academic Tasks --> Hours spent student and completeing assignments.
* Entrepenurial Projects







Physical Activity and Sleep Quality: Both physical activity and sleep quality are essential for overall health.



* Daily Physical Activity
* Sleep Quality 





Health Risk Level:



* Low health Risk --> the studnt is likely health
* Moderate Health Risk --> there are concerns that need to be addressed
* High Health Risk --> Implies that the student is facing serious health challenges.



### Sub-Questions:



A. Demographics \& Mental Health:



1. Is there a difference in mental health risk levels between male and female students?



2\. How does age relate to mental health risk among students?



3\. Are certain demographic groups more likely to report higher stress levels?







B. Physiological Factors



4\. Is a higher average heart rate associated with higher mental health risk levels?



5\. How does blood pressure (systolic and diastolic) vary across mental health risk categories?



6\. Do students with high health risk levels show consistently higher physiological stress indicators?







C. Stress (Measured vs Self-Reported)



7\. How closely do self-reported stress levels align with measured physiological stress indicators?



8\. Do students who report high stress also show higher heart rate or blood pressure on average?



9\.  Which type of stress (self-reported vs physiological) is more strongly associated with poor mental health?





D. Academic \& Entrepreneurial Workload



Does the number of hours spent on academic tasks correlate with mental health risk?



Do students involved in entrepreneurial projects experience higher stress or mental health risk?



Is there an optimal range of academic workload associated with lower mental health risk?





E. Lifestyle Factors (Sleep \& Physical Activity)



How does sleep quality differ between students with low, moderate, and high mental health risk?



Is higher daily physical activity associated with better mental health outcomes?



Which lifestyle factor (sleep quality or physical activity) appears to have a stronger relationship with mental health risk?

