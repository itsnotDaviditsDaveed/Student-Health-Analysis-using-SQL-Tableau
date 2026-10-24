# Student Health Analysis (SQL + Tableau): Version 1

**Tools:** SQL (MySQL) · Tableau · Kaggle dataset (1,000 students)

**How do physical, lifestyle, and academic factors relate to health risk in college students?** This was my first pass at this dataset. I later expanded it in [Student Health Analysis – Renewed](https://github.com/itsnotDaviditsDaveed/Student-Mental-Health-Analysis-Renewed).

![Health risk vs sleep quality](Health%20Risk%20Level%20vs%20Sleep%20Quality.png)

## Key Findings

- **Self-reported stress lines up with risk.** It averages about 3 for Low risk, 6 for Moderate, and 7 for High.
- **Poor sleep goes with higher risk.** Poor sleepers are about 3x as likely to be High risk as good sleepers.
- **Heart rate barely differs** across risk levels (about 69–70 bpm on average).
- **Blood pressure shows only small, inconsistent differences** across risk levels.
- **High physical activity showed up more in High risk students**, which suggests activity alone doesn't determine health.
- **Project hours are similar across risk levels**, so workload alone doesn't explain risk either.

## Visuals

| | |
|---|---|
| ![](Health%20Risk%20vs%20Self%20Report%20Level.png) | ![](Heart%20Rate%20vs%20Risk%20Levels.png) |
| ![](Health%20Risk%20Level%20vs%20Systolic%20Blood%20Pressue.png) | ![](Gender%20Vs%20Health_Risk.png) |

## Files

- `student_health_queries.sql`: SQL queries
- `Student Health Analysis Answers_2_11_26.md`: answers to each question
- `Student_Health_Analysis_notes.md`: dataset notes and questions
- `student_health_data.csv`: dataset

**Data source:** [Student Health Data – Kaggle](https://www.kaggle.com/datasets/mjawad17/student-health-data/data)
