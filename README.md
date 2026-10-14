# PostgreSQL Sales Analysis - Executive Power BI Report

## Skills Demonstrated
- Data modeling (Star schema: FactSales + dimension tables)
- PostgreSQL for extraction and aggregation
- Power BI report design: KPIs, trend analysis, categorical breakdowns, maps
- Data visualization and storytelling for executive audiences
- Business analysis: sales, profitability, and regional performance

## Project Overview
This repository contains a Power BI report (Power BI Executive.pbix) built on a PostgreSQL-style star schema. The model centers on a FactSales table with supporting dimension tables (Product, Customer, Region, Date). The deliverable is an executive-facing dashboard designed to answer high-level business questions about product performance, regional sales, monthly trends, and profitability.

I used SQL to prepare and validate key aggregations (samples in SQLQueries.sql) and Power BI to create interactive visualizations so stakeholders can rapidly monitor business health and drill into details.

## Business Questions Addressed
- Which products drive the most revenue and how are they ranked?
- How do sales and profit margin vary across product categories?
- Where are our top-performing regions and cities?
- What are the monthly and seasonal sales trends year-over-year?
- Which customers and segments contribute the most to revenue?

## Data Model
The report uses a star schema with the following primary tables:
- FactSales: SaleID, DateID, ProductID, CustomerID, RegionID, Quantity, TotalSales, TotalProfit
- DimProduct: ProductID, ProductName, Category, (other attributes)
- DimCustomer: CustomerID, CustomerName, (segment attributes)
- DimRegion: RegionID, Country, City, (other location attributes)
- DimDate: DateID, Year, Month, MonthName, (date attributes)

SQL queries in SQLQueries.sql show example extractions and aggregations (top products, regional totals, monthly sales, category profit margins, ranking products by sales).

## Key Findings
Based on the report model and the SQL analyses included in this repo, the executive dashboard highlights the following insights:
- Top products: A small set of products, like Product 117 and 133, contribute disproportionately to revenue - these are surfaced in a ranked list and top-N bar chart.
- Category profitability: Product categories show different profit margins; some high-sales categories have lower margins and warrant margin-improvement focus.
- Regional performance: Certain countries and cities like Ontario consistently lead in total sales; a map and ranked region table make these easy to spot.
- Seasonality and trends: Monthly sales lines show clear seasonality trend, useful for forecasting and inventory planning.
- Customer concentration: A subset of customers generate a large portion of sales (Pareto principle), signalling opportunities for targeted retention and upsell.

(These findings are derived from the data model and SQL queries in this repo; for exact numeric values open the Power BI file and use the report filters.)

## Visualizations Included
- KPI cards
- Top products bar chart
- Category profit margin chart
- Monthly trend line chart
- Regional map and table
- Customer table / Pareto chart
- Interactive slicers: Year, Category, Region, and Product to filter the whole report

These visualizations are laid out for an executive audience; high-level KPIs up top, trends and geographic context next, and product/customer detail available for drill-down.

Some Screenshots

<img width="496" height="380" alt="{7D5D65C7-E028-4FCF-99FC-580D8B0DB271}" src="https://github.com/user-attachments/assets/2029e248-07eb-4206-a055-1ae280bab00a" />

<img width="691" height="357" alt="{BDD0F458-CCF7-4A6F-8B8D-297B14F39B5A}" src="https://github.com/user-attachments/assets/860cd16b-516c-4f19-acde-d4bfea8097b8" />


## How to Review
1. Open Power BI Desktop and load Power BI Executive.pbix from the repository.
2. If you want to run the SQL samples, connect to your PostgreSQL instance (or the database you use for FactSales and dimension tables) and run the queries in SQLQueries.sql.
3. Use slicers and date filters in the report to validate trends and inspect the top or bottom performers.

## Summary / Conclusion
This project demonstrates end-to-end analytical work: designing a clean star schema, using SQL for robust aggregations and ranking, and building an executive-grade Power BI report that turns raw sales data into actionable insights. The dashboard is especially useful for leadership who need a quick read on revenue, profitability, and geographic performance while preserving the ability to drill into product- and customer-level detail.

