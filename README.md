# Beavertown Brewery Supply Chain Analysis & Demand Planning Platform
## Inspired by Beavertown Brewery

### Description:

The project analyses the end-to-end supply chain and demand planning solution inspired by the supply chain analyst role at Beavertown Brewery. The objective is to simulate a real-world brewery supply chain environment where data is collected from multiple operational systems, then cleaned, transformed, modelled, and visualised to support business decision-making.

This project demonstrates practical skills across supply chain analysis, SQL Server, data quality management, Power BI, demand planning, forecast accuracy measurement, supplier performance analytics, and inventory optimisation.

The solution has been designed to mirror real-world challenges, which includes data quality issues, forecast bias, stock shortages, late supply deliveries, and inconsistent master data quality.



### Project Structure

```text
Beavertown-Supply-Chain-Analysis/
│
│
├── .git/
│
├── Data/
│    
│
├── SQL/
│    ├── 01-Database & Schema/
│    │      ├──01 - Database Creation.sql
│    │      └──02 - Schema Creation.sql
│    │
│    ├── 02-Staging
│    │      └── 01- StagingTablesCreation.sql
│    │
│    ├── 03-Table Generation
│    │      ├── 01-DimTablesCreation.sql
│    │      ├── 02-FactTablesCreation.sql
│    │      └── 03-Number Table Creation.sql
│    │
│    ├── 04-Data Generation
│    │      ├── 01-DimProduct Data Generation.sql
│    │      ├── 02-DimSupplier Data Generation.sql
│    │      ├── 03-DimWarehouse Data Generation.sql
│    │      ├── 04-Date Table Data Generation.sql
│    │      ├── 05-Sales Records Data Generation.sql
│    │      ├── 06-Forecast Data Generation.sql
│    │      ├── 07-Inventory Data Generation.sql
│    │      ├── 08-Supplier Delivery Data Generation.sql
│    │      ├── 09-Dirty Data Generation.sql
│    │      └── 10-Dirty Sales Data in SalesRaw.sql
│    
│    
│    
│    
│    
├── Documents/
│
│
├─ Images/
│
│
├─ Licence/
│
└── README.md
```
 
### Business Problem:

As production volumes increase and distribution networks expand, supply chain teams require reliable and accurate data to support planning decisions.

Several critical business challenges have been identified:

- Inaccurate demand forecasts
- Excess inventory holding costs
- Product stockouts
- Supplier delivery delays
- Poor forecast visibility
- Data quality issues across operational systems

The goal of the project is to create a single analytical platform that is capable of providing meaningful insights across planning, procurement, warehousing, and logistics operations.

### Project Objectives:

#### Demand Planning
- Measure forecast accuracy
- Identify forecast bias
- Monitor forecast performance trends
- Compare forecasts against actual demand

#### Inventory Management
- Monitor inventory levels
- Identify stock shortages
- Track safety stock breaches
- Calculate inventory turnover

#### Supplier Performance
- Measure supplier delivery performance
- Calculate On Time In Full (OTIF)
- Identify late deliveries
- Analyse supplier lead time variation

#### Data Quality
- Detect duplicates
- Identify missing values
- Standardise master data
- Validate data integrity

#### Executive Reporting
- Deliver automated KPI dashboards
- Support sales and operations (S&OP) decision making
- Provide actionable business insights
- Improve supply chain visibility

### Tools Used

1. SQL Server - Data warehouse and transformation
2. T-SQL - Data cleaning & KPI calculations
3. Python - Data generation
4. Pandas - Data manipulation
5. Power BI - Visualisation
6. DAX - KPI calculations
7. GitHub - Repository
8. Excel - Validation & reconciliation
