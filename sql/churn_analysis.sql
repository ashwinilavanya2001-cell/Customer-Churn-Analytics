-- ============================================================
-- CUSTOMER CHURN ANALYSIS
-- MySQL Business Analysis
-- ============================================================

-- 1. Total Customers
SELECT COUNT(*) AS TotalCustomers
FROM CustomerChurn;


-- 2. Total Churned Customers
SELECT COUNT(*) AS ChurnedCustomers
FROM CustomerChurn
WHERE Churn = 'Yes';


-- 3. Overall Churn Rate
SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS ChurnRate
FROM CustomerChurn;


-- 4. Customer Distribution by Churn
SELECT
    Churn,
    COUNT(*) AS CustomerCount
FROM CustomerChurn
GROUP BY Churn;


-- 5. Churn Rate by Contract Type
SELECT
    Contract,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS ChurnRate
FROM CustomerChurn
GROUP BY Contract
ORDER BY ChurnRate DESC;


-- 6. Churn Rate by Internet Service
SELECT
    InternetService,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS ChurnRate
FROM CustomerChurn
GROUP BY InternetService
ORDER BY ChurnRate DESC;


-- 7. Churn Rate by Payment Method
SELECT
    PaymentMethod,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS ChurnRate
FROM CustomerChurn
GROUP BY PaymentMethod
ORDER BY ChurnRate DESC;


-- 8. Churn Rate by Tenure Group
SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS TenureGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS ChurnRate
FROM CustomerChurn
GROUP BY
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END
ORDER BY ChurnRate DESC;


-- 9. Churn Rate by Monthly Charge Group
SELECT
    CASE
        WHEN MonthlyCharges < 30 THEN 'Under $30'
        WHEN MonthlyCharges < 60 THEN '$30-$60'
        WHEN MonthlyCharges < 90 THEN '$60-$90'
        ELSE 'Above $90'
    END AS MonthlyChargeGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS ChurnRate
FROM CustomerChurn
GROUP BY
    CASE
        WHEN MonthlyCharges < 30 THEN 'Under $30'
        WHEN MonthlyCharges < 60 THEN '$30-$60'
        WHEN MonthlyCharges < 90 THEN '$60-$90'
        ELSE 'Above $90'
    END
ORDER BY ChurnRate DESC;


-- 10. Churn Rate by Senior Citizen
SELECT
    SeniorCitizen,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS ChurnRate
FROM CustomerChurn
GROUP BY SeniorCitizen
ORDER BY ChurnRate DESC;


-- 11. High-Value Churned Customers
SELECT
    customerID,
    Contract,
    InternetService,
    tenure,
    MonthlyCharges,
    TotalCharges,
    Churn
FROM CustomerChurn
WHERE Churn = 'Yes'
  AND MonthlyCharges >= 90
ORDER BY MonthlyCharges DESC;


-- 12. Monthly Revenue Associated with Churned Customers
SELECT
    ROUND(SUM(MonthlyCharges), 2) AS MonthlyRevenueAtRisk
FROM CustomerChurn
WHERE Churn = 'Yes';
