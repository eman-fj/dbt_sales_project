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
  intermediate/
    int_sales_enriched.sql
  marts/
    fct_customer_sales.sql

seeds/
  products.csv
```

---

## Transformations

### Staging Layer

* Cleans and standardizes raw data
* Filters invalid records

### Intermediate Layer

* Joins sales and product data
* Calculates total sales per order

### Mart Layer

* Aggregates total sales per customer and product category

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

---

## Example Output from Snowflake

![Output from snowflake](image.png)
---

## Key Learnings

* Built modular ELT pipelines using dbt
* Used seeds for reproducible data ingestion
* Applied layered data modeling approach
* Implemented testing and documentation
* Used Snowflake for scalable transformations


