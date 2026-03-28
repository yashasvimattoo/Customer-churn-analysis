SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:/Users/yasha/OneDrive/Documents/Customer Churn Analysis & Segmentation using RFM/data/Online Retail.csv'
INTO TABLE `churn_project`.`retail_data`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE `churn_project`.`retail_data` (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(15,4),
    CustomerID VARCHAR(20),
    Country VARCHAR(100)
);



SELECT * FROM retail_data LIMIT 10;


CREATE TABLE retail_clean AS
SELECT *
FROM retail_data
WHERE CustomerID IS NOT NULL
AND Quantity > 0
AND UnitPrice > 0;

SELECT COUNT(*) FROM retail_clean;

CREATE TABLE frequency AS
SELECT 
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS Frequency
FROM retail_clean
GROUP BY CustomerID;

CREATE TABLE monetary AS
SELECT 
    CustomerID,
    SUM(Quantity * UnitPrice) AS Monetary
FROM retail_clean
GROUP BY CustomerID;
SELECT * FROM monetary LIMIT 10;

CREATE TABLE recency AS
SELECT 
    CustomerID,
    DATEDIFF(
        (SELECT MAX(InvoiceDate) FROM retail_clean),
        MAX(InvoiceDate)
    ) AS Recency
FROM retail_clean
GROUP BY CustomerID;

CREATE TABLE rfm AS
SELECT 
    r.CustomerID,
    r.Recency,
    f.Frequency,
    m.Monetary
FROM recency r
JOIN frequency f ON r.CustomerID = f.CustomerID
JOIN monetary m ON r.CustomerID = m.CustomerID;

SELECT * FROM rfm LIMIT 10;