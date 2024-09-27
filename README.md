# MBA Admission Outcomes

## Introduction
This project involves analyzing a dataset based on the Wharton Class of 2025's MBA admissions. The goal of the project is to understand the factors that influence MBA admissions, such as academic background, GMAT scores, work experience, and demographic information. Through this analysis, I aim to identify patterns in the admissions decisions, predict outcomes, and provide insights for prospective students or admission committees.

## Background
The dataset used in this project was downloaded from Kaggle and consists of synthetic data simulating real admission statistics. It includes various applicant attributes such as GPA, GMAT scores, work experience, and demographics like gender, race, and international status. The admission status includes three possible outcomes: Admit, Waitlist, or Deny.

The project seeks to:
- Explore the relationship between applicant characteristics and admission outcomes.
- Predict admissions decisions based on key features.
- Visualize the data to identify significant trends and correlations.

## Tools I Used
The following tools were employed for the analysis:
- **SQL**: To extract and manipulate the data from the dataset.
- **Tableau**: For creating an interactive dashboard with visualizations such as charts and graphs.
- **Excel**: For data pre-processing and storage.

## The Analysis
The project involved the following steps:

1. **Data Collection**:
   - The dataset was collected from Kaggle. It contains synthetic information for applicants to the Wharton Class of 2025.

2. **SQL Queries and Insights**:
   - Using SQL, I extracted key insights from the dataset. Below are four key areas of analysis:

### Part 1: Distribution of Admission Decisions
   - The first analysis looked at the overall distribution of admission decisions (Admit, Waitlist, Deny) among all applicants. The insights show how many applicants were admitted, waitlisted, and denied.
   
   SQL Query:
   ```sql
   SELECT admission, COUNT(*)
   FROM mba_admission
   GROUP BY admission;
   ```

### Part 2: Gender Distribution of Admitted Applicants
   - The second analysis examined the distribution of admitted students by gender. This helps identify the proportion of male and female applicants who were admitted. The query showed how gender may influence the likelihood of admission.

   SQL Query:
   ```sql
   SELECT gender, COUNT(*)
   FROM mba_admission
   WHERE admission = 'Admit'
   GROUP BY gender;
   ```

### Part 3: Admission Outcomes for International Students
   - This analysis focused on how international students fared across all admission outcomes (Admit, Waitlist, Deny). By checking the count of international students for each admission status, the analysis provided a breakdown of how           international students were treated in the admissions process.

   SQL Query:
   ```sql
   -- Number of international students admitted
   SELECT international, COUNT(*)
   FROM mba_admission
   WHERE admission = 'Admit'
   GROUP BY international;

   -- Number of international students waitlisted
   SELECT international, COUNT(*)
   FROM mba_admission
   WHERE admission = 'Waitlist'
   GROUP BY international;

   -- Number of international students denied
   SELECT international, COUNT(*)
   FROM mba_admission
   WHERE admission = 'Deny'
   GROUP BY international;
   ```

### Part 4: Admission Outcomes by Major
   - The final analysis examined the distribution of admission outcomes by applicants' undergraduate major (Business, STEM, Humanities). It helped understand how an applicant's major impacted their chances of being admitted, waitlisted,        or denied.

   SQL Query:
   ```sql
   -- Admitted applicants by major
   SELECT major, COUNT(*)
   FROM mba_admission
   WHERE admission = 'Admit'
   GROUP BY major;

   -- Waitlisted applicants by major
   SELECT major, COUNT(*)
   FROM mba_admission
   WHERE admission = 'Waitlist'
   GROUP BY major;

   -- Denied applicants by major
   SELECT major, COUNT(*)
   FROM mba_admission
   WHERE admission = 'Deny'
   GROUP BY major;
   ```

## Conclusions

### Insights
Based on the analysis of the MBA admission dataset and the Tableau dashboard, several key insights have been drawn:
![MBA Admission Outcomes Dashboard]((https://1drv.ms/i/c/525fa29fbbe2fd5e/EZj0UrmAbmpGt1LagISf0LgBysIE9WrEH7erZ9_xMgPhTQ?e=kazStF))

### 1. Work Experience and Admission Outcome
   - The analysis shows that applicants who were admitted or waitlisted had an average of around 5 years of work experience, which is slightly higher than those who were denied.
   - **Conclusion**: Applicants with more work experience have a better chance of being admitted or waitlisted. This suggests that work experience plays an important role in the admission decision process.

### 2. GPA and GMAT Scores Across Admission Outcomes
   - The average GPA and GMAT scores increase progressively from applicants who were denied, to those who were waitlisted, and finally to those who were admitted.
   - **Conclusion**: Higher GPAs and GMAT scores are positively correlated with better admission outcomes. This indicates that academic performance and standardized test scores are critical factors in securing admission.

### 3. Applicant Distribution by Major
   - Among admitted students, applicants from Humanities majors had a higher admission rate compared to Business and STEM majors.
   - **Conclusion**: The admissions process appears to be balanced in terms of academic backgrounds, and applicants from Humanities fields had relatively strong chances of being admitted. This suggests that the admissions committee values diverse academic perspectives and not just quantitative or business-related majors.

### 4. International vs. Domestic Students
   - The analysis shows that domestic students were admitted at a much higher rate compared to international students.
   - **Conclusion**: International applicants face additional challenges in the admissions process, as the data reveals that a smaller proportion of international students were admitted compared to domestic students. This may indicate a higher level of competition or other barriers for international applicants.

### 5. Total Applicant Breakdown
   - The overall distribution of applicants shows that the majority were either waitlisted or denied, with a smaller portion being admitted.
   - **Conclusion**: The MBA admissions process is highly selective, with only a small percentage of applicants securing admission. This reflects the competitive nature of the program and the high standards maintained by the admissions committee.

### 6. Key Factors for Admission
   - In summary, the key factors influencing admission decisions include:
     - **Higher GPA and GMAT scores**: These were significant predictors of admission success.
     - **More work experience**: Applicants with 5 or more years of work experience were more likely to be admitted or waitlisted.
     - **Academic background**: Humanities majors seemed to have an edge in admissions compared to Business and STEM majors.
     - **Domestic applicants**: Domestic students had higher admission rates compared to international students.

   - **Overall Insight**: To improve chances of admission, prospective applicants should focus on maximizing their academic performance (GPA, GMAT) and gaining significant professional work experience. However, international students should also be aware of potential additional competition or challenges in the admissions process.


