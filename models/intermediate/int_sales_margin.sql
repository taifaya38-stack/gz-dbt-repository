 select date_date,
        revenue,
        quantity,
        round(revenue-(quantity * purchase_price),2) as margin,
        round(quantity * purchase_price,2) as purchase_cost
    from {{ ref('stg_raw__sales') }}  as sales
    inner join {{ ref('stg_raw__product') }} as products
    on sales.product_id=products.products_id
