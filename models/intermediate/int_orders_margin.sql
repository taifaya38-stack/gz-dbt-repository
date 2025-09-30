 select* from {{ ref('int_sales_margin') }}  as margin
    on sales.product_id=margin.orders_id
