# Supply Chain Performance & Inventory Optimisation Analysis
## Inspired by Beavertown Brewery

### Description:

A brewery has experienced rapid growth,

The management has identified the recurring issues:
- Late deliveries
- Stock shortages
- excess inventory
- Supplier performance inconsistencies
- Forecast inaccuracies
- Customer order delays

The supply chain department has asked for a complete analysis solution.

I have been hired as the supply chain analyst.

My task is to:
1. Build the database
2. Generate operational data
3. Identify data quality issues
4. Clean and validate the raw data
5. Analyse performance
6. Develop interactive executive dashboards
7. Present my recommendations

### Business Questions:

#### Inventory
- Which products are consistently under-stocked?
- Which Stock Keeping Units (SKUs) are over-stocked?
- What is the inventory turnover by product?

#### Suppliers
- Which suppliers are causing late deliveries?
- Which suppliers have the highest defect rates?
- Which suppliers should be reviewed?

#### Purchasing
- Which materials have the longest lead times?
- How accurate are expected delivery dates?

#### Fulfilment
- Which warehouses perform best?
- Which orders are late?

#### Demand Planning
- Which products have the highest demand?
- Which orders are late?

#### Executive
- Working Capital tied up in inventory?
- On Time In Full (OTIF) performance?
- Fill rate?
- Inventory days?
- Supplier scorecard?


### Project Structure

```text
Supply-Chain-Analysis/
│
│
├── .git/
│
├── Data/
│    
│
├── SQL/
│    ├── 01-Database & Schema/
│    │      ├── 01-DatabaseCreation.sql
│    │      └── 02-Schema Creation.sql
│    │
│    ├── 02-Staging/
│    │       ├── 01-StagingTablesCreation.sql
│    │       ├── 02-DirtyDataStaging.sql
│    │       └── 03-SalesRawDuplicates.sql
│    │
│    ├── 03-Table Creation/
│    │      ├── 01-DimTablesCreation.sql
│    │      ├── 02-FactTablesCreation.sql
│    │      ├── 03-NumberTableCreation.sql
│    │      └── 04-DataQualityMetricTableCreation.sql
│    │
│    ├── 04-Data Validation/
│    │      ├── 01-DuplicateCount.sql
│    │      ├── 02-InventoryRawCleaning.sql
│    │      ├── 03-ForecastRawCleaning.sql
│    │      ├── 04-SalesRawCleaning.sql
│    │      ├── 05-SupplierRawCleaning.sql
│    │      ├── 06-LoadCleanDataToWarehouse.sql
│    │      └── 07-DataQualityMetrics.sql
│    
├── MySQL Analysis/
│    │      ├── 01-DuplicateCount.sql
│
│
├─ Images/
│
│
├─ Licence/
│
└── README.md
```

### Tools Used

1. SQL Server - Data warehouse and transformation
2. T-SQL - Data cleaning & KPI calculations
3. Python - Data generation
4. Pandas - Data manipulation
5. Power BI - Visualisation
6. DAX - KPI calculations
7. GitHub - Repository
8. Excel - Validation & reconciliation
