# dbt Sales Transformation Project

## Overview

This project demonstrates an end-to-end ELT pipeline built using dbt and Snowflake. It integrates transactional sales data with product metadata to generate aggregated business insights.

The pipeline follows a modern data modeling approach with staging, intermediate, and mart layers.

---

## Tech Stack

* dbt (data transformation)
* Snowflake (data warehouse)
* GitHub (version control)

---

## Data Sources

### 1. Sales Data

* Source: Snowflake table (`sales_data`)
* Contains transactional order data

### 2. Product Data

* Source: CSV file (`seeds/products.csv`)
* Loaded using dbt seeds

---

## Project Structure

```
models/
  staging/
    stg_sales.sql
    stg_products.sql
  marts/
    sales_enriched.sql
    customer_sales.sql

seeds/
  products.csv
```

---

## Transformations

### Staging Layer

* Cleans and standardizes raw data
* Ensures consistent column naming and structure

### Transformation Layer

* sales_enriched joins sales data with product metadata
* Calculates total sales using:
    total_sales = quantity × price

### Mart Layer

* Customer_sales_summary aggregates total sales
* Provides business ready insights per customer and product category

---

## Key Metric

total_sales = quantity × price

---

## Running the Project

Load seed data:

```
dbt seed
```

Run transformations:

```
dbt run
```

Run tests:

```
dbt test
```

Generate docs:

```
dbt docs generate
dbt docs serve
```

Following is the lineage graph for customer_sales_summary:

![lineage graph](image-2.png)
---

1. Data Sources (Inputs)

- products (blue): comes from dbt seed (CSV file)
- raw.sales_data (green): comes from Snowflake raw table

These form the input layer of the pipeline.

2. Staging Layer

- staging_products: cleans and standardizes product data
- staging_sales: cleans and standardizes sales data

This layer ensures consistency before transformations.

3. Transformation Layer

- sales_enriched: joins sales and product data
- Adds business meaning by combining datasets

This is where raw data becomes analysis-ready.

4. Mart Layer (Final Output)

- customer_sales_summary: aggregates total sales
- Answers the business question:
      “How much did each customer spend per product category?”
      
## Example Output from Snowflake

![Output from snowflake](image.png)
---

## Key Learnings

* Built modular ELT pipelines using dbt
* Used seeds for reproducible data ingestion
* Applied layered data modeling approach
* Implemented testing and documentation
* Used Snowflake for scalable transformations


