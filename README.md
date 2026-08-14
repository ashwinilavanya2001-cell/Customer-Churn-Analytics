# Customer Churn Prediction & Risk Analysis


👩‍💻 Author

Ashwini Lavanya J

Data Analyst | Python | SQL | Machine Learning | Power BI



## 📌 Project Overview

Customer churn is a major challenge for subscription-based businesses. This project analyzes customer behavior to identify factors associated with churn, predict customers who are likely to leave, and classify customers based on their churn risk.

The project combines **Python, MySQL, Machine Learning, and Power BI** to build an end-to-end customer churn analytics solution.

---

## 🎯 Objectives

- Analyze customer churn patterns and behavior.
- Identify the major factors associated with customer churn.
- Build machine learning models to predict customer churn.
- Compare Logistic Regression and Random Forest models.
- Develop a customer churn probability and risk classification system.
- Identify high-risk customers and their associated monthly charges.
- Create an interactive Power BI dashboard for business analysis.

---

## 🛠️ Technologies Used

### Programming & Data Analysis
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn

### SQL
- MySQL
- DB Fiddle

### Machine Learning
- Scikit-learn
- Logistic Regression
- Random Forest
- Classification Metrics
- ROC-AUC
- Confusion Matrix

### Business Intelligence
- Microsoft Power BI
- DAX
- Interactive Visualizations
- KPI Cards
- Slicers

---

## 🔄 Project Workflow

Customer Data
      ↓
Data Cleaning & Preprocessing
      ↓
Exploratory Data Analysis
      ↓
SQL Business Analysis
      ↓
Feature Engineering
      ↓
Machine Learning Models
      ↓
Churn Probability Prediction
      ↓
Customer Risk Classification
      ↓
Power BI Dashboard
      ↓
Business Insights**

📊 Exploratory Data Analysis

The customer data was analyzed to understand relationships between churn and:

Contract type
Tenure
Internet service
Payment method
Monthly charges
Total charges
Customer demographics
Additional services

The analysis showed that customer churn varies considerably across different contract types, tenure groups, payment methods, and service categories.

🤖 Machine Learning

Two classification models were evaluated:

1. Logistic Regression

A baseline Logistic Regression model was developed to predict customer churn.

A class-balanced Logistic Regression model was also developed to improve the identification of churned customers.

Balanced Logistic Regression Performance
Metric	Score
Accuracy	73.81%
Precision	50.43%
Recall	78.34%
F1-Score	61.36%
ROC-AUC	84.16%

The balanced model achieved a 78.34% recall, which is useful for identifying customers who are actually likely to churn.

2. Random Forest

A Random Forest classifier was also trained and evaluated for comparison.

The confusion matrix and prediction probabilities were generated to analyze model performance and customer churn risk.

🔍 Important Churn Factors

The Logistic Regression coefficient analysis identified several important factors associated with customer churn.

Some of the notable features included:

Fiber optic internet service
Month-to-month contracts
Total charges
Streaming services
Customer tenure
Monthly charges
Long-term contracts

The coefficient analysis was used to understand the direction and relative importance of these factors.

⚠️ Customer Risk Analysis
The model's churn probabilities were used to classify customers into three risk levels:

Risk Level	Customers
Low	602
Medium	318
High	489

The analysis identified 489 high-risk customers in the evaluated customer set.

High-Risk Customer Analysis
High-risk customers were sorted using predicted churn probability.
Monthly charges associated with high-risk customers were calculated.
The average monthly charge of high-risk customers was approximately $77.59.
The total monthly charges associated with the identified high-risk customers were approximately $37,940.05.

These values represent customers identified as high risk by the model, rather than guaranteed future revenue loss.

📈 Power BI Dashboard

An interactive Power BI dashboard was developed to present the analysis in a business-friendly format.
Dashboard Includes
Total Customers KPI
Churn Rate KPI
Monthly Risk KPI
Customer Risk Level Distribution
Churn Rate by Internet Service
Churn Rate by Monthly Charge Group
Churn Rate by Contract Type
Churn Rate by Payment Method
Churn Rate by Tenure Group
Churn filter/slicer
Dashboard Preview

💡 Key Business Insights
Month-to-month customers show a significantly higher churn rate than customers with longer-term contracts.
Customers with shorter tenure have a higher likelihood of churn.
Fiber optic customers show a higher churn rate compared with other internet service categories.
Electronic check users show a comparatively higher churn rate.
Customers with higher monthly charges show increased churn risk.
Identifying high-risk customers can help businesses prioritize retention strategies.

📁 Project Structure
Customer-Churn-Analytics/
│
├── images/
│   └── customer-churn-dashboard.png
│
├── notebooks/
│   └── Ashwini.ipynb
│
├── powerbi/
│   └── Customer_Churn_Risk_Analysis.pbix
│
├── sql/
│   └── churn_analysis.sql
│
└── README.md

🚀 Business Recommendations

Based on the analysis, businesses can:

Focus retention campaigns on month-to-month customers.
Provide special onboarding support for new customers.
Offer incentives for customers to move to longer-term contracts.
Investigate customer dissatisfaction among high-risk service categories.
Provide targeted offers to customers with high churn probability.
Monitor high-value customers with increasing churn risk.

📌 Conclusion

This project demonstrates an end-to-end approach to customer churn analytics by combining SQL-based business analysis, Python-based exploratory analysis, machine learning, customer risk scoring, and Power BI visualization.

The solution can help businesses understand churn drivers, identify high-risk customers, and support data-driven customer retention strategies.
