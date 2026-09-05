-- Customer Churn Analysis — Required SQL Queries

-- 1. Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Count churned customers
SELECT COUNT(*) AS churned_customers
FROM customers
WHERE Churn = 'Yes';

-- 3. Count customers by gender
SELECT gender, COUNT(*) AS customer_count
FROM customers
GROUP BY gender;

-- 4. Count senior citizens
SELECT COUNT(*) AS senior_citizens
FROM customers
WHERE SeniorCitizen = 1;

-- 5. Average tenure for churned vs non-churned customers
SELECT Churn, AVG(tenure) AS average_tenure
FROM customers
GROUP BY Churn;

-- 6. Number of customers by Contract type
SELECT Contract, COUNT(*) AS customer_count
FROM customers
GROUP BY Contract;

-- 7. Average MonthlyCharges by InternetService
SELECT InternetService, AVG(MonthlyCharges) AS average_monthly_charges
FROM customers
GROUP BY InternetService;

-- 8. Total TotalCharges by PaymentMethod
SELECT PaymentMethod, SUM(TotalCharges) AS total_charges
FROM customers
GROUP BY PaymentMethod;

-- 9. Churn rate by Contract type
SELECT
    Contract,
    AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) * 100
        AS churn_rate_percent
FROM customers
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

-- 10. Churn rate by InternetService type
SELECT
    InternetService,
    AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) * 100
        AS churn_rate_percent
FROM customers
GROUP BY InternetService
ORDER BY churn_rate_percent DESC;

-- 11. Churn rate by OnlineSecurity
SELECT
    OnlineSecurity,
    AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) * 100
        AS churn_rate_percent
FROM customers
GROUP BY OnlineSecurity
ORDER BY churn_rate_percent DESC;

-- 12. Top 5 Contract + InternetService segments by churn rate
SELECT
    Contract,
    InternetService,
    COUNT(*) AS customers,
    AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) * 100
        AS churn_rate_percent
FROM customers
GROUP BY Contract, InternetService
ORDER BY churn_rate_percent DESC
LIMIT 5;
