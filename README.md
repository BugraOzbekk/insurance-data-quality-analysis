# Data Quality & Revenue Validation Analysis (SQL Project)

SQL project focused on validating transactional data accuracy and identifying anomalies that may impact revenue, reporting, and operational reliability.

## Overview
This project focuses on analysing transactional data to detect inconsistencies, validate business rules, and identify potential data quality issues.

Rather than building dashboards or predictive models, the project simulates real-world validation checks commonly performed in operations, finance, and commercial analytics environments.

It demonstrates how structured SQL logic can be used to uncover errors, ensure data integrity, and support reliable decision-making.

## Dataset
The project uses a simulated transactional dataset representing a subscription-based business model.

It consists of three core tables:

- **customers** – customer information and join dates  
- **policies** – product/service agreements and pricing details  
- **premium_transactions** – actual billing transactions and source systems  

## Key Validation Checks

### Premium Validation
![Premium Check](premium_validation_result.png)

This analysis compares expected charges (based on base pricing) with actual transactions to identify:

- Missing charges  
- Overcharged transactions  
- Undercharged transactions  

These discrepancies highlight potential revenue leakage and billing inconsistencies.

---

### Date Integrity Issue
![Date Issue](date_issue.png)

This check identifies cases where a service or policy start date occurs before the customer join date.

Such inconsistencies indicate data integrity issues that can impact reporting accuracy and downstream processes.

---

### Post-Cancellation Transactions
![Cancellation Issue](cancellation_issue.png)

This analysis detects transactions processed after a policy or service has been cancelled.

These cases represent control failures and potential compliance or financial risks.

## Tools
- SQL Server  
- Azure Data Studio  

## Business Value
This project demonstrates how SQL can be used to:

- Validate transactional data accuracy  
- Detect anomalies and inconsistencies  
- Identify potential revenue leakage  
- Support reliable reporting and operational decision-making  

The techniques used are applicable across multiple domains, including finance, logistics, operations, and subscription-based services.
