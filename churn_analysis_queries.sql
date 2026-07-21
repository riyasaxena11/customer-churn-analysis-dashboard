SHOW TABLES;
SELECT COUNT(*) FROM customer_churn_cleaned;
SELECT * FROM customer_churn_cleaned LIMIT 5;
DESCRIBE customer_churn_cleaned;
SELECT COUNT(*) AS total_customers
FROM customer_churn_cleaned;
SELECT 
    COUNT(*) AS churned_customers
FROM customer_churn_cleaned
WHERE Churn = 'Yes';
SELECT 
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customer_churn_cleaned;
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customer_churn_cleaned
GROUP BY Contract;
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customer_churn_cleaned
GROUP BY Contract;
SELECT 
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customer_churn_cleaned
GROUP BY PaymentMethod;
SELECT 
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customer_churn_cleaned
GROUP BY TechSupport;
SELECT 
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS churn_rate_percentage
FROM customer_churn_cleaned
GROUP BY InternetService;
SELECT 
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS average_monthly_charges
FROM customer_churn_cleaned
GROUP BY Churn;
SELECT 
    Churn,
    ROUND(AVG(tenure),2) AS average_tenure_months
FROM customer_churn_cleaned
GROUP BY Churn;




