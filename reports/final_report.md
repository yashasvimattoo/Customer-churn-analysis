### PROBLEM STATEMENT:
The objective of this project is to analyze customer purchasing behavior and identify key factors contributing to customer churn. The goal is to segment customers based on their activity and value, and propose actionable strategies to improve customer retention.

### DATASET DESCRIPTION:
The dataset contains transactional data from an online retail store, including invoice details, product information, customer IDs, purchase dates, quantities, and pricing.

After cleaning:

* Removed missing Customer IDs
* Excluded negative quantities (returns)
* Filtered invalid transactions

Final dataset consists of ~530K valid transactions.

### APPROACH:
The analysis was conducted in three main stages:

1. Data Cleaning using Python and SQL
2. Feature Engineering using RFM (Recency, Frequency, Monetary)
3. Customer Segmentation based on behavioral patterns

SQL was used to compute RFM metrics, while Python was used for segmentation and analysis.


### CUSTOMER SEGMENTATION:
Customers were segmented into the following groups based on RFM scores:

* Champions: High value, frequent, and recent buyers
* Loyal Customers: Regular buyers with consistent activity
* At Risk: Previously active but recently inactive customers
* Lost Customers: Customers exhibiting prolonged inactivity and a high likelihood of churn

### KEY INSIGHTS:
* High-value customer segments contribute a disproportionately large share of total revenue, highlighting the importance of targeted retention strategies.
* A significant portion of customers fall into the "At Risk" and "Lost" segments, indicating retention challenges.
* Customers with low purchase frequency and high inactivity are more likely to churn.
* Customer inactivity (high recency) emerged as the strongest indicator of churn risk.
* Approximately 13.8% of total revenue was associated with At Risk and Lost customer segments, highlighting significant revenue exposure due to churn.


### CHURN ANALYSIS:
Customers were classified as churned if their inactivity period exceeded the 75th percentile of historical purchase gaps (approximately 47 days). This data-driven threshold was used instead of an arbitrary cutoff period.

Analysis showed:

* High churn rates in "Lost" and "At Risk" segments
* Very low churn among "Champions"

This highlights the importance of early intervention to retain valuable customers.

Note: Since the dataset contains a limited historical observation window, churn should be interpreted as customer inactivity risk rather than confirmed customer attrition.

### BUSINESS RECOMMENDATIONS:
Based on the analysis, the following actions are recommended:

* Champions: Offer loyalty rewards and exclusive benefits to retain high-value customers
* Loyal Customers: Introduce upselling and cross-selling strategies
* At Risk: Send personalized offers and re-engagement campaigns
* Lost Customers: Launch win-back campaigns with discounts or incentives

Additionally, early-stage engagement strategies should be implemented to reduce initial drop-offs.


### TOOLS USED:
* SQL (MySQL) for data extraction and RFM computation
* Python (Pandas) for analysis and segmentation
* Power BI for dashboard visualization

### CONCLUSION:
The project successfully identified key drivers of customer churn and demonstrated how customer segmentation and retention analysis can support data-driven business decisions and improve customer retention strategies.

 --- Cohort analysis was performed to track customer retention over time. Cohort analysis revealed that customer retention declined sharply after the first purchase cycle, with only 30–40% of customers returning in subsequent periods. This suggests that weak early-stage engagement is a major contributor to customer churn. Customers who do not return within the initial period are highly likely to churn.
