# Supply Chain Analysis Platform for a Craft Brewery
## Inspired by Beavertown Brewery

### Objective:

My objective is to design and create an end-to-end Supply Chain Analysis solution inspired by the type of work performed 
by Beavertown Brewery Supply Chain Analysts in a real-world brewery operation.

The project will demonstrate:
- SQL Server Express
- Database Design
- ETL Principles
- Data Validation
- Data Cleaning
- Data Modelling
- Supply Chain Analysis
- Procurement Analysis
- Inventory Analysis
- Warehouse Analysis
- Power BI
- DAX
- Dashboard Design
- Business Storytelling

### Business Scenario:

BlackCrow Brewery has experienced rapid growth over the last three years.

As the demand increased, several operational issues emerged:
- Inventory shortages
- Overstocking
- Late supplier deliveries
- Inaccurate purchase planning
- Poor warehouse visibility
- Rising inventory costs
- Reduced service levels

BlackCrow management requires a complete analytics platform to improve supply chain performance.

I have been hired as the Supply Chain Analyst to deliver the solution.

### Business Questions:

#### Inventory
- Which products require replenishment?
- Which Stock Keeping Units (SKUs) are over-stocked?
- What is the inventory turnover by product?
- Which products have the highest inventory value?

#### Procurement
- Which suppliers perform best?
- Which suppliers consistently deliver late?
- What are the average lead times?
- Which suppliers should be reviewed?

#### Sales
- Which products generate the highest revenue?
- Which products generate the highest profit?
- What are the monthly sales trends?

#### Operations
- What is OTIF performance?
- What are the inventory holding costs?
- Which warehouses carry the most stock?

### Project Workflow:
1. Create the Database
2. Create the Schemas
3. Create the Tables
4. Load the master data
5. Load the operational data
6. Create the data issues
7. Validate the data
8. Clean the data
9. Create the report views
10. Export CSV files
11. Build the Power BI model
12. Develop the dashboards
13. Generate the Business Insights

### Target Database Size:

**Table** | **Target Rows**

Products | 50

Suppliers | 20

Inventory Records | 150

Purchase Orders | 5,000

Sales Orders | 10,000

### Project Structure:

```text
Supply_Chain_Analysis/
│
├── README.md
│
├── SQL/
│    ├── 01-DatabaseCreation.sql
│    ├── 02-SchemaCreation.sql
│    ├── 03-TableCreation.sql
│    ├── 04-LoadMasterData.sql
│    ├── 05-LoadOpsData.sql
│    ├── 06-DataValidation.sql
│    ├── 07-DataQualityIssuesCreation.sql
│    ├── 08-DataValidation.sql
│    ├── 09-DataCleaning.sql
│    ├── 10-CleaningValidation.sql
│    ├── 11-ViewsCreation.sql
│    └── 12-ViewsValidation.sql
│
├── Data/
│    ├── FactOTIF.csv
│    ├── FactInventory.csv
│    ├── FactProductProfitability.csv
│    ├── FactSales.csv
│    ├── DimProduct.csv
│    ├── DimSupplier.csv
│    └── DimSupplierPerformance.csv
│
├─ Power BI/
│    └── BlackCrowSupplyDashboard.pbix
│
├─ Images/
│    ├── 00-Model Relationship.png
│    ├── 01-Executive Overview.png
│    ├── 02-Executive Overview with Slicers.png
│    ├── 03-Inventory Management.png
│    ├── 04-Inventory Management with Slicers.png
│    ├── 05-Supplier Performance.png
│    ├── 06-Supplier Performance with Slicers.png
│    ├── 07-Product Performance.png
│    └── 08-Product Performance with Slicers.png
│
└── Documents/
│    ├── DataDictionary.md
```

### Tech Used:

#### SQL Server Express
- Database creation
- Schema design
- Table creation
- Data generation
- Data quality testing
- Data cleaning
- view creation
- Business analysis

#### Power BI
- Data modelling
- DAX calculations
- Dashboard design
- KPI development
- Visual analytics

### Key Business Insights:

- Supplier performance varied considerably across the supplier base.
- OTIF performance highlighted opportunities for supplier improvement.
- Inventory levels revealed products requiring ReOrder review.
- Revenue generation was concentrated amongst a subset of products.
- Product profitability differed significantly across categories.

### Business Recommendations:

1. Prioritise suppliers demonstrating strong OTIF performance and competitive lead times.
2. Review products consistently falling below ReOrder levels.
3. Implement ongoing OTIF monitoring to improve service levels.
4. Use historical sales trends to support forecasting improvements.

### Author:

Grant Britchford

Data Analyst

**Date**: 7th Oct 2026
