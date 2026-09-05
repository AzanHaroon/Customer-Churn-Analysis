# Customer-Churn-Analysis

Customer Churn Analysis is a data analysis project focused on identifying the key factors that influence customer churn. Using customer data and SQL queries, tThe project combines **SQL analysis, statistical hypothesis testing, and machine learning** to uncover churn patterns and provide data-driven recommendations for improving customer retention.

---

## Business Problem

Customer churn can significantly affect a company's revenue and long-term growth.

The main objectives of this project are to:

* Identify customers who are more likely to churn.
* Understand the key factors associated with customer churn.
* Analyze customer behavior and characteristics.
* Build machine learning models to predict churn.
* Provide data-driven recommendations to reduce customer loss.

---

##  Dataset

**Dataset:** IBM Telco Customer Churn Dataset

The dataset contains information about telecommunications customers, including:

* Customer demographics
* Contract information
* Payment methods
* Monthly and total charges
* Services used
* Tenure
* Churn status

The notebook downloads the dataset directly from the source URL.

---

##  Project Approach

### 1. SQL Analysis

SQLite is used to analyze the customer data and answer business-related questions such as:

* What percentage of customers have churned?
* Which contract types have the highest churn?
* Does tenure affect churn?
* Which payment methods are associated with higher churn?
* What customer segments have the highest churn rates?

### 2. Descriptive Statistics

Statistical analysis is performed to understand:

* Customer demographics
* Churn distribution
* Tenure patterns
* Monthly charges
* Total charges
* Customer segments

### 3. Statistical Hypothesis Testing

The project uses:

* **Chi-square test** to analyze relationships between categorical variables and churn.
* **Independent t-test** to compare numerical variables between churned and retained customers.

### 4. Machine Learning

Several classification models are developed and evaluated:

* Logistic Regression
* Decision Tree
* Random Forest

These models are used to predict whether a customer is likely to churn.

### 5. Feature Importance

Feature importance analysis is performed to identify the variables that have the strongest influence on customer churn.

---

## 🛠️ Technologies & Tools

| Technology       | Purpose                          |
| ---------------- | -------------------------------- |
| Python           | Data analysis & machine learning |
| Pandas           | Data manipulation                |
| NumPy            | Numerical computing              |
| SQLite           | SQL-based data analysis          |
| SciPy            | Statistical hypothesis testing   |
| Scikit-learn     | Machine learning                 |
| Matplotlib       | Data visualization               |
| Jupyter Notebook | Development & analysis           |

---

##  Project Structure

```text
Customer-Churn-Analysis/
│
├── Customer_Churn_Analysis.ipynb
├── customer_churn_queries.sql
├── README.md
└── data/
    └── README.md
```

> The dataset is downloaded automatically by the notebook, so it does not need to be manually uploaded to the repository.

---

##  How to Run

### 1. Clone the Repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

### 2. Navigate to the Project

```bash
cd Customer-Churn-Analysis
```

### 3. Install Required Libraries

```bash
pip install pandas numpy scipy scikit-learn matplotlib jupyter
```

### 4. Open the Notebook

```bash
jupyter notebook
```

Alternatively, open the `.ipynb` file directly in **VS Code**.

### 5. Run the Notebook

Run all cells **from top to bottom**.

The notebook will automatically download the IBM Telco Customer Churn dataset from the source URL.

---

##  Key Analysis

The project investigates important churn-related factors such as:

* Contract type
* Customer tenure
* Monthly charges
* Payment method
* Internet service
* Online security
* Technical support
* Senior citizen status
* Dependents
* Partner status

---

##  Business Recommendations

Based on the analysis, businesses can consider:

* Providing incentives for customers on month-to-month contracts.
* Offering loyalty rewards to improve long-term retention.
* Identifying high-risk customers using machine learning predictions.
* Improving customer support for customers showing signs of dissatisfaction.
* Creating targeted retention campaigns for high-risk customer segments.

---

##  Future Improvements

Future versions of this project could include:

* Hyperparameter tuning
* XGBoost and other advanced models
* Customer churn probability scoring
* Interactive dashboards using Power BI or Streamlit
* Automated churn prediction pipelines
* Real-time customer churn monitoring

---

## 👨‍💻 Author

**Azan Haroon**

Data Science Student | Data Analysis | Machine Learning | SQL

---

## ⭐ Project Purpose

This project was developed as a practical **Data Science portfolio project** to demonstrate skills in **SQL, statistical analysis, data visualization, machine learning, and business analytics**.
