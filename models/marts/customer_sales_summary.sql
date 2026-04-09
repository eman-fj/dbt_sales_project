SELECT
    customer_id,
    product_category,
    SUM(total_sales) AS total_sales
FROM {{ ref('sales_enriched') }}
GROUP BY customer_id, product_category