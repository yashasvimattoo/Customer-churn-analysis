#  Customer Churn Analysis & Segmentation (RFM-Based)

##  Project Overview

This project focuses on analyzing customer purchasing behavior to identify churn patterns and improve customer retention strategies. Using RFM (Recency, Frequency, Monetary) analysis along with cohort retention techniques, the project provides deep insights into customer lifecycle and engagement.

---

##  Objectives

* Identify customers likely to churn
* Segment customers based on behavior
* Analyze retention trends over time
* Provide actionable business recommendations

---

##  Tools & Technologies

* **SQL (MySQL)** – Data cleaning and RFM computation
* **Python (Pandas)** – Data processing and cohort analysis
* **Power BI** – Dashboard and visualization

---

##  Dataset

* Online Retail transactional dataset (~530K records after cleaning)
* Includes customer purchases, product details, and timestamps

---

##  Project Workflow

### 1. Data Cleaning

* Removed missing Customer IDs
* Filtered negative quantities (returns)
* Standardized date formats

### 2. Feature Engineering (RFM)

* **Recency** → Days since last purchase
* **Frequency** → Number of transactions
* **Monetary** → Total spend

### 3. Churn Definition

* Customers were classified as churned if their inactivity period exceeded the 75th percentile of historical purchase gaps (approximately 47 days). This data-driven threshold was used instead of an arbitrary cutoff period.
> Note: Since the dataset covers a limited historical period, churn should be interpreted as customer inactivity risk rather than confirmed customer attrition.

### 4. Customer Segmentation

* Champions
* Loyal Customers
* Average Customers
* At Risk
* Lost Customers

### 5. Cohort Analysis

* Tracked retention over time
* Identified early-stage churn behavior

---

##  Dashboard Features

* KPI Cards (Revenue, Customers, Churn %)
* Customer Segmentation Analysis
* Revenue Distribution by Segment
* Churn Analysis by Segment
* Cohort Retention Heatmap

---

##  Key Insights

* High-value customer segments contribute a disproportionate share of total revenue
* High churn observed in At Risk and Lost segments
* Most customers drop off within the first few months
* Customer inactivity is the primary driver of churn

---

##  Business Recommendations

* Retain high-value customers with loyalty programs
* Target At Risk users with personalized offers
* Launch win-back campaigns for Lost customers
* Focus on early engagement to reduce initial churn

---

##  Conclusion

This project highlights the importance of customer segmentation and early retention strategies. By combining RFM analysis with cohort tracking, businesses can proactively identify churn risk, improve customer retention, and support data-driven decision-making.
