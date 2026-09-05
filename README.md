# Customer Churn Analysis

Integrated Data Science assignment covering SQL, statistics, machine learning, and professional publishing.

## Business Problem
A telecommunications company wants to understand which customers are likely to churn and identify practical actions to reduce churn.

## Dataset
IBM Telco Customer Churn dataset:

https://raw.githubusercontent.com/IBM/telco-customer-churn-on-icp4d/master/data/Telco-Customer-Churn.csv

## Approach
- Data cleaning and `TotalCharges` median imputation
- SQLite SQL analysis
- Descriptive statistics
- Chi-square test: Contract vs Churn
- Independent t-test: MonthlyCharges, churned vs non-churned
- Logistic Regression
- Decision Tree (`max_depth=4`)
- Random Forest (`n_estimators=100`)
- Confusion matrices
- Model comparison
- Random Forest feature importance
- Business recommendations

## Files
- `customer_churn_analysis.ipynb` — complete notebook
- `customer_churn_queries.sql` — all required SQL queries
- `README.md` — project documentation
- `customer_churn.db` — generated SQLite database after notebook execution

## How to Run

```bash
pip install pandas numpy matplotlib scipy scikit-learn jupyter
jupyter notebook customer_churn_analysis.ipynb
```

Run the notebook from top to bottom. The dataset is downloaded from the assignment's IBM GitHub source.

## GitHub
Create a public repository named:

`customer-churn-analysis`
