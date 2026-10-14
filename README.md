# PostgreSQL Sales Analysis - Executive Power BI Report

## Overview
This repository contains an executive-level Power BI dashboard built on a PostgreSQL-style star schema for sales analysis. The project demonstrates how transactional sales data can be modeled, validated, and transformed into insights that help business leaders track performance, monitor profitability, and identify growth opportunities.

The report is designed for high-level stakeholders and combines KPI cards, trend analysis, geographic performance, and customer/product drill-downs into a single interactive dashboard.

## Skills Demonstrated
- Data modeling using a star schema (FactSales + dimension tables)
- PostgreSQL for data extraction, validation, and aggregation
- Power BI report design for KPI monitoring and executive storytelling
- Data visualization and dashboard UX for non-technical stakeholders
- Business analysis across sales, profitability, and regional performance

## Project Structure
- `Power BI Executive.pbix` — executive dashboard file
- `SQLQueries.sql` — SQL examples for extracting and validating key metrics
- `README.md` — project overview and usage guidance

## Business Questions Addressed
- Which products drive the most revenue and how are they ranked?
- How do sales and profit margin vary across product categories?
- Where are our top-performing regions and cities?
- What are the monthly and seasonal sales trends year-over-year?
- Which customers and segments contribute the most to revenue?

## Data Model
The report relies on a star schema with a central fact table and supporting dimensions:

- `FactSales`: `SaleID`, `DateID`, `ProductID`, `CustomerID`, `RegionID`, `Quantity`, `TotalSales`, `TotalProfit`
- `DimProduct`: `ProductID`, `ProductName`, `Category`, and other product-level attributes
- `DimCustomer`: `CustomerID`, `CustomerName`, and customer/segment attributes
- `DimRegion`: `RegionID`, `Country`, `City`, and geographic attributes
- `DimDate`: `DateID`, `Year`, `Month`, `MonthName`, and date attributes

The SQL samples in `SQLQueries.sql` show examples of revenue ranking, regional aggregation, category profitability analysis, and monthly trend evaluation.

## Key Insights
The dashboard and SQL analyses reveal a number of actionable business findings:

- Top products: A small set of products contributes disproportionately to total revenue, making them easy to identify in a ranked product view.
- Some categories generate strong revenue but lower margins, highlighting areas where pricing or mix improvements may be needed.
- Regional performance: Countries and cities such as Ontario consistently lead in sales, offering clear opportunities for focused regional strategy.
- Monthly trends show repeated seasonal patterns that are useful for forecasting, inventory planning, and campaign timing.
- A subset of customers contributes a large share of total sales, indicating opportunities for retention and upsell programs.

## Dashboard Highlights
The executive report includes the following visual components:

- KPI cards for revenue, profit, sales volume, and margin
- Top products bar chart
- Category profit margin analysis
- Monthly sales trend line chart
- Regional map and ranked region table
- Customer table and Pareto-style concentration view
- Interactive slicers for year, category, region, and product

These views are arranged to support executive decision-making: high-level KPIs at the top, trend and geographic context in the middle, and detailed product/customer analysis below.

## Screenshots

### Donut Chart Showing Revenue by Product Category
<img width="547" height="347" alt="{BF2927A4-7AE6-420C-8866-32891732C2DB}" src="https://github.com/user-attachments/assets/b8130f82-bd49-4ea3-be57-4f8fa421bdb8" />


### Revenue by Month
<img src="https://github.com/user-attachments/assets/860cd16b-516c-4f19-acde-d4bfea8097b8" alt="Power BI sales and regional performance dashboard" width="900" style="max-width:100%; height:auto;" />

## How to Review
1. Open Power BI Desktop and load `Power BI Executive.pbix` from this repository.
2. If you want to run the SQL samples, connect to your PostgreSQL instance (or the database containing the `FactSales` and dimension tables) and execute the queries in `SQLQueries.sql`.
3. Use the report slicers and date filters to explore trends, compare categories, and investigate top and bottom performers.

## Summary
This project demonstrates the full analytical workflow: structuring a clean dimensional model, using SQL to validate and aggregate key metrics, and creating an executive-grade Power BI dashboard that turns raw sales data into actionable business insight.

It is a strong example of how data modeling, SQL analysis, and effective dashboard design can work together to support real business decision-making.
