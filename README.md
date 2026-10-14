# PostgreSQL Sales Analysis — Executive Power BI Report

## Title
Executive Sales Dashboard — Power BI ("Power BI Executive.pbix")

## Skills Demonstrated
- Data modeling (Star schema: FactSales + dimension tables)
- SQL for extraction and aggregation (PostgreSQL / analytical queries)
- Power BI report design: KPIs, trend analysis, categorical breakdowns, maps
- Data visualization and storytelling for executive audiences
- Business analysis: sales, profitability, and regional performance

## Project Overview
This repository contains a Power BI executive report (Power BI Executive.pbix) built on a PostgreSQL-style star schema. The model centers on a FactSales table with supporting dimension tables (Product, Customer, Region, Date). The deliverable is an executive-facing dashboard designed to answer high-level business questions about product performance, regional sales, monthly trends, and profitability.

I used SQL to prepare and validate key aggregations (samples in SQLQueries.sql) and Power BI to create interactive visualizations so stakeholders can rapidly monitor business health and drill into details.

## Business Questions Addressed
- Which products drive the most revenue and how are they ranked?
- How do sales and profit margin vary across product categories?
- Where are our top-performing regions and cities?
- What are the monthly and seasonal sales trends year-over-year?
- Which customers and segments contribute the most to revenue?

## Datasets / Data Model
The report uses a star schema with the following primary tables:
- FactSales: SaleID, DateID, ProductID, CustomerID, RegionID, Quantity, TotalSales, TotalProfit
- DimProduct: ProductID, ProductName, Category, (other attributes)
- DimCustomer: CustomerID, CustomerName, (segment attributes)
- DimRegion: RegionID, Country, City, (other location attributes)
- DimDate: DateID, Year, Month, MonthName, (date attributes)

SQL queries in SQLQueries.sql show example extractions and aggregations (top products, regional totals, monthly sales, category profit margins, ranking products by sales).

## Key Findings (summary)
Based on the report model and the SQL analyses included in this repo, the executive dashboard highlights the following insights:
- Top products: A small set of products contribute disproportionately to revenue — these are surfaced in a ranked list and top-N bar chart.
- Category profitability: Product categories show different profit margins; some high-sales categories have lower margins and warrant margin-improvement focus.
- Regional performance: Certain countries and cities consistently lead in TotalSales — a map and ranked region table make these easy to spot.
- Seasonality and trends: Monthly sales lines show clear seasonality and year-over-year trends, useful for forecasting and inventory planning.
- Customer concentration: A subset of customers generate a large portion of sales (Pareto principle), signalling opportunities for targeted retention and upsell.

(These findings are derived from the data model and SQL queries in this repo; for exact numeric values open the Power BI file and use the report filters.)

## Visualizations Included (what to expect in the PBIX)
- KPI cards: Current period Sales, Profit, Quantity, and % change vs prior period
- Top products bar chart: Ranked products by TotalSales with drill-through capability
- Category profit margin chart: Category-level TotalSales, TotalProfit, and calculated Profit Margin
- Monthly trend line chart: MonthlySales over time with year slicer for comparison
- Regional map and table: Choropleth or bubble map showing sales by country/city
- Customer table / Pareto chart: Customers sorted by TotalSales with cumulative contribution
- Interactive slicers: Year, Category, Region, and Product to filter the whole report

These visualizations are laid out for an executive audience — high-level KPIs up top, trends and geographic context next, and product/customer detail available for drill-down.

## How to Review / Reproduce
1. Open Power BI Desktop and load Power BI Executive.pbix from the repository.
2. If you want to run the SQL samples, connect to your PostgreSQL instance (or the database you use for FactSales and dimension tables) and run the queries in SQLQueries.sql.
3. Use slicers and date filters in the report to validate trends and inspect the top/bottom performers.

## Summary / Conclusion
This project demonstrates end-to-end analytical work: designing a clean star schema, using SQL for robust aggregations and ranking, and building an executive-grade Power BI report that turns raw sales data into actionable insights. The dashboard is especially useful for leadership who need a quick read on revenue, profitability, and geographic performance while preserving the ability to drill into product- and customer-level detail.

If you want, I can:
- extract and summarize specific numeric KPIs from the PBIX (if you provide a published dataset or exported model),
- add screenshots or an executive one-page PDF exported from the Power BI file into this repo, or
- convert the SQL examples into parameterized queries for scheduled reporting.

---
Updated README to summarize the Power BI Executive report and the analytical approach.
