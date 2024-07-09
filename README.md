# Supply-Chain-Data-Exploration-and-Analysis

Our goal is to establish a database management system for a B2B organization to manage its supply chains using SQL for daily reports and strategic planning. The dataset includes records of sales, vendor, and client information.

## Concepts Tested
- Examining data and functional needs for a business
- Creating an ER diagram as a conceptual model
- Converting a conceptual model into a SQL schema using DDL
- Using DML commands to alter data
- Writing effective SQL queries showcasing concepts like logical equivalence, aggregate functions, and window functions
- Implementing database indexes
- Assessing the performance of SQL queries and indexes
- Presenting visualizations

## File Descriptions
- **VmiCustomers.csv**: Lists special cases where the warehouse supports specific customers.
- **Warehouse.csv**: Specifies storage costs and daily capacities.

### Python Files
- **CIS556_clean.py**: Data health check and cleaning script.

### SQL Files
- **DDL_SupplyChain.sql**: DDL statements.
- **DML_SupplyChain.sql**: DML statements.
- **SQL Queries**: Executed queries as detailed in the methodology.

### Text Files
- **reproduce.docx**: Steps to reproduce the project in another environment.

### Dataset
- **Supply Chain Dataset**: Records of a B2B organization’s sales, vendor, and client information. [Dataset Link](https://www.kaggle.com/datasets/laurinbrechter/supply-chain-data)

## Indexing
- **Index**: CREATE INDEX plant_index ON orderlist(plant_code);
- **Query Optimization**: Used EXPLAIN to test query performance before and after indexing.

## Methodology
Tested query execution time using EXPLAIN in three scenarios: before statistics collection or indexing, with statistics but without indexes, and with both statistics and indexes.

## Instructions for Reproducing the Project
1. Use the provided DDL and DML statements.
2. Apply the indexing scheme: CREATE index plant_index on orderlist(plant_code);

## Final Conclusions
This project provided meaningful insights into supply chain management data and effective database construction using an ER diagram.
For more detailed information, refer to the full project documentation.
