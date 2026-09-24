# Supply Chain Analysis
## Beavertown Brewery Inspired Supply Chain Analysis Project

### Description:

The project analyses the end-to-end supply chain operations of a independant brewery using SQL Server and Power BI.

The project objective is to identify operational inefficiencies, supplier risks, inventory issues, and logistical bottlenecks
while providing the brewery with actionable recommendations based on the results of the analysis.

### Project Structure

```text
Beavertown-Supply-Chain-Analytics
│
├── README.md
│
├── Data
│ │
│ ├── Raw
│ │ ├── suppliers.csv
│ │ ├── products.csv
│ │ ├── inventory.csv
│ │ ├── warehouses.csv
│ │ ├── purchase_orders.csv
│ │ ├── production_batches.csv
│ │ ├── logistics.csv
│ │ ├── sales_orders.csv
│ │ └── calendar.csv
│ │
│ └── Processed
│ ├── fact_inventory.csv
│ ├── fact_purchase_orders.csv
│ ├── fact_production.csv
│ ├── fact_logistics.csv
│ ├── dim_supplier.csv
│ ├── dim_product.csv
│ ├── dim_warehouse.csv
│ └── dim_date.csv
│
├── SQL
│ │
│ ├── 01_Create_Database.sql
│ ├── 02_Create_Tables.sql
│ ├── 03_Insert_Sample_Data.sql
│ ├── 04_Generate_Synthetic_Data.sql
│ ├── 05_Create_Views.sql
│ ├── 06_Create_Stored_Procedures.sql
│ ├── 07_Create_Indexes.sql
│ ├── 08_Data_Quality_Checks.sql
│ ├── 09_KPI_Queries.sql
│ └── 10_Reporting_Views.sql
│
├── Documentation
│ │
│ ├── Business_Requirements.md
│ ├── Data_Dictionary.md
│ ├── Entity_Relationship_Diagram.png
│ ├── Data_Model.png
│ ├── KPI_Definitions.md
│ ├── Dashboard_Wireframes.pdf
│ ├── Assumptions.md
│ └── Executive_Summary.pdf
│
├── Analysis
│ │
│ ├── Inventory_Analysis.sql
│ ├── Supplier_Performance_Analysis.sql
│ ├── Production_Analysis.sql
│ ├── Logistics_Analysis.sql
│ ├── Demand_Forecasting.sql
│ └── Root_Cause_Analysis.sql
│
├── PowerBI
│ │
│ ├── Beavertown_SupplyChain.pbix
│ │
│ ├── DAX
│ │ ├── Inventory_Measures.dax
│ │ ├── Supplier_Measures.dax
│ │ ├── Production_Measures.dax
│ │ ├── Logistics_Measures.dax
│ │ └── Executive_KPIs.dax
│ │
│ ├── Themes
│ │ └── Beavertown_Theme.json
│ │
│ └── Exported_Images
│ ├── Executive_Dashboard.png
│ ├── Inventory_Dashboard.png
│ ├── Supplier_Dashboard.png
│ ├── Production_Dashboard.png
│ └── Logistics_Dashboard.png
│
├── Dashboard_Design
│ │
│ ├── Page_1_Executive_Overview.md
│ ├── Page_2_Inventory_Analytics.md
│ ├── Page_3_Supplier_Performance.md
│ ├── Page_4_Production_Analytics.md
│ ├── Page_5_Logistics_Analytics.md
│ └── UX_Design_Guidelines.md
│
├── Presentation
│ │
│ ├── Executive_Presentation.pptx
│ ├── Case_Study.pdf
│ └── Portfolio_Showcase.pdf
│
├── Images
│ │
│ ├── erd.png
│ ├── star_schema.png
│ ├── dashboard_preview_1.png
│ ├── dashboard_preview_2.png
│ ├── dashboard_preview_3.png
│ ├── dashboard_preview_4.png
│ └── dashboard_preview_5.png
│
└── .gitignore
```
 
---
 
### Business Goals:

#### Inventory Optimisation
- Reduce the excess inventory while maintaining quality service levels.

#### Supplier Performance
- Evaluate the suppliers based on:
  1. On-time deliveries
  2. Cost
  3. Lead times
  4. Defect rates

#### Product Efficiency
- Monitor:
  1. Brew output
  2. Batch yield
  3. Material usage

#### Logistics Performance
- Track:
  1. Delivery performance
  2. Transport costs
  3. Fulfilment rates

### Tools Used:

**SQL Server**
- Database creation
- ETL
- Data modelling
- KPI calculations

**Power BI**
- Dashboard development
- Data visualisation
- Executive reports

### Supply Chain KPIs:

#### Inventory
- Inventory Turnover
- Days Inventory Outstanding
- Stockout Rate
- Inventory Value

#### Suppliers
- Supplier Scorecard
- Average Lead Time
- On-Time Delivery %

#### Production
- Batch Yield %
- Production Volume
- Waste %

#### Logistics
- Delivery Success %
- Transport Cost per Unit
- Warehouse Throughput

### Dashboard
