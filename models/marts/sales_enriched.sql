SELECT
    s.order_id,
    s.customer_id,
    p.product_category,
    s.quantity,
    p.price,
    (s.quantity * p.price) AS total_sales
FROM {{ ref('staging_sales') }} s
JOIN {{ ref('staging_products') }} p
    ON s.product_id = p.product_id