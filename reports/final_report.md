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
* Lost Customers: Customers who have not purchased in a long time

### KEY INSIGHTS:
* A small percentage of customers (Champions) contribute a disproportionately high share of total revenue.
* A significant portion of customers fall into the "At Risk" and "Lost" segments, indicating retention challenges.
* Customers with low purchase frequency and high inactivity are more likely to churn.
* Churn is strongly correlated with recency, suggesting inactivity as the primary driver.


### CHURN ANALYSIS:
Churn was defined as customers who have not made a purchase in the last 30 days.

Analysis showed:

* High churn rates in "Lost" and "At Risk" segments
* Very low churn among "Champions"

This highlights the importance of early intervention to retain valuable customers.

### BUISNESS RECOMMENDATIONS:
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
The project successfully identified key drivers of customer churn and highlighted the importance of customer activity and engagement. By leveraging RFM segmentation, targeted retention strategies can be implemented to reduce churn and maximize customer lifetime value.

 --- Cohort analysis was performed to track customer retention over time. The results showed a significant drop in retention within the first few months after initial purchase, indicating that early-stage engagement is critical. Customers who do not return within the initial period are highly likely to churn.
