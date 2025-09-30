 select sales.orders_id,
        *
    from {{ ref('int_sales_margin') }} as margin
    inner join {{ ref('stg_raw__sales') }}  as sales
   using (date_date)

