 select orders_id,
        date_date,
        revenue,
        quantity,
        margin,
        purchase_cost
    from {{ ref('int_sales_margin') }}  as sales
    inner join {{ ref('stg_raw__ship') }} as ship
    on sales.product_id=ship.orders_id
