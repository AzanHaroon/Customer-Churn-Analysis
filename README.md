# Customer Churn Analysis

An end-to-end data science project that uses SQL, statistical hypothesis testing, and machine learning to identify customer churn patterns and support data-driven retention strategies.

## Project Description

This project analyzes customer data from a telecommunications company to understand why customers leave, identify high-risk customer groups, and develop predictive models that can help the business reduce churn.

The project combines **SQL analysis, descriptive statistics, hypothesis testing, and machine learning** in a single Jupyter Notebook.

## Business Problem

Customer churn directly affects revenue and customer lifetime value. A telecommunications company needs to understand which customers are more likely to leave and what factors are associated with churn.

The main business questions are:

- What proportion of customers have churned?
- Which contract types have the highest churn rates?
- Does customer tenure differ between churned and non-churned customers?
- Are monthly charges associated with churn?
- Which customer characteristics are most predictive of churn?
- How can the company use these findings to improve customer retention?

## Data Source

**Dataset:** IBM Telco Customer Churn Dataset

**Source:** [IBM Telco Customer Churn Dataset](https://github.com/IBM/telco-customer-churn-on-icp4d)

The dataset contains customer demographic information, account details, subscribed services, billing information, and a churn indicator.

**Dataset size:** 7,043 customers and 21 columns.

**Target variable:** `Churn`
- `Yes` — Customer churned
- `No` — Customer did not churn

## Approach

### 1. Data Cleaning

- Loaded the dataset using Pandas.
- Inspected columns, data types, missing values, and duplicate records.
- Converted `TotalCharges` from text to numeric values.
- Handled missing `TotalCharges` values using median imputation.
- Removed `customerID` from the machine learning features because it is an identifier.

### 2. SQL Analysis

The cleaned dataset was loaded into a **SQLite database**.

SQL queries were used to analyze:

- Total customer count
- Churned customer count
- Customer demographics
- Senior citizens
- Average tenure by churn status
- Customer distribution by contract type
- Average monthly charges by internet service
- Total charges by payment method
- Churn rate by contract type
- Churn rate by internet service
- Churn rate by online security
- Highest-risk contract and internet-service segments

See [`customer_churn_queries.sql`](customer_churn_queries.sql) for the complete SQL analysis.

### 3. Statistical Analysis

Descriptive statistics were used to understand the distribution of numerical variables.

The project also includes two hypothesis tests:

**Chi-square test: Contract Type vs Churn**
- **H₀:** Contract type and churn are independent.
- **H₁:** Contract type and churn are associated.
- **Significance level:** α = 0.05

**Welch independent-samples t-test: Monthly Charges**
- **H₀:** Mean monthly charges are equal for churned and non-churned customers.
- **H₁:** Mean monthly charges differ between the two groups.

### 4. Machine Learning

The target variable was converted into binary values:

- `0` = No churn
- `1` = Churn

Categorical variables were one-hot encoded, and the data was split into training and testing sets using an **80/20 split** with `random_state=42`.

The following models were trained:

| Model | Configuration |
|---|---|
| Logistic Regression | Baseline classification model |
| Decision Tree | `max_depth=4` |
| Random Forest | `n_estimators=100` |

Models were evaluated using:

- Accuracy
- Precision
- Recall
- F1-score
- Confusion matrices

Random Forest feature importance was also analyzed to identify the most influential predictive features.

## Key Findings

### Customer Churn Overview

- The dataset contains **7,043 customers**.
- **1,869 customers** have churned.
- The overall churn rate is approximately **26.54%**.

### Contract Type and Churn

Contract type is a major churn indicator.

| Contract Type | Churn Rate |
|---|---:|
| Month-to-month | 42.71% |
| One year | 11.27% |
| Two year | 2.83% |

Month-to-month customers have substantially higher churn than customers on longer-term contracts.

### Monthly Charges

The average monthly charges were higher for churned customers than for non-churned customers.

| Customer Group | Average Monthly Charges |
|---|---:|
| Churned | 74.44 |
| Non-churned | 61.27 |

The notebook uses a Welch independent-samples t-test to determine whether this difference is statistically significant.

### Statistical Interpretation

The chi-square test is used to evaluate whether contract type is significantly associated with churn.

The t-test is used to evaluate whether monthly charges differ significantly between churned and non-churned customers.

The notebook reports the test statistics, p-values, and decisions using a significance level of **0.05**.

### Machine Learning Findings

The notebook compares Logistic Regression, Decision Tree, and Random Forest using accuracy, precision, recall, and F1-score.

Random Forest feature importance is used to identify the strongest predictive variables.

**The model comparison and feature-importance results should be reviewed directly in the notebook after execution.**

### Business Recommendation

The company should prioritize retention efforts for high-risk customers, especially those with month-to-month contracts and customer profiles associated with higher churn.

A practical retention strategy could include:

- Offering incentives for longer-term contracts.
- Identifying high-risk customers before they churn.
- Reviewing pricing and service combinations associated with higher churn.
- Using the best-performing model to support targeted retention campaigns.
- Monitoring recall and F1-score to reduce missed churn-risk customers.

## Tools Used

- **Python** — Data analysis and machine learning
- **Pandas** — Data cleaning and manipulation
- **NumPy** — Numerical operations
- **SQLite** — SQL database analysis
- **SciPy** — Statistical hypothesis testing
- **Scikit-learn** — Machine learning models and evaluation
- **Matplotlib** — Data visualization
- **Jupyter Notebook** — Analysis environment
- **GitHub** — Project documentation and version control

## Project Structure

```text
customer-churn-analysis/
│
├── customer_churn_analysis.ipynb
├── customer_churn_queries.sql
├── Telco-Customer-Churn.csv
├── README.md
└── customer_churn.db
How to Run the Notebook
1. Clone the Repository
git clone https://github.com/your-username/customer-churn-analysis.git
cd customer-churn-analysis
2. Install Required Libraries
pip install pandas numpy matplotlib scipy scikit-learn jupyter
3. Open Jupyter Notebook
jupyter notebook
4. Run the Analysis

Open:

customer_churn_analysis.ipynb

Run the notebook cells from top to bottom.

The notebook loads the dataset, performs data cleaning, executes SQL queries, conducts statistical tests, trains machine learning models, and displays the results.

5. Offline Dataset Support

The notebook first attempts to load the dataset from the IBM GitHub source.

If the internet is unavailable, it uses the local file:

Telco-Customer-Churn.csv

Keep the CSV file in the same directory as the notebook for offline execution.

Author

Muskan Haroon

Computer Science Student | Data Science & Machine Learning Enthusiast

License

This project is intended for educational and portfolio purposes.
