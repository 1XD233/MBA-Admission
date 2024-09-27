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

### Part 2: Gender Distribution of Admitted Applicants
The second analysis examined the distribution of admitted students by gender. This helps identify the proportion of male and female applicants who were admitted. The query showed how gender may influence the likelihood of admission.
