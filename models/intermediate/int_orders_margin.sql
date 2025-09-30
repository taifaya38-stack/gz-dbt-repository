 select  
     sales.orders_id,
     date_date,
     ROUND(SUM(revenue),2) as revenue,
     ROUND(SUM(quantity),2) as quantity,
     ROUND(SUM(purchase_cost),2) as purchase_cost,
     ROUND(SUM(margin),2) as margin
     FROM {{ ref("int_sales_margin") }}
     inner join {{ ref('stg_raw__sales') }}  as sales
     using (date_date)
     GROUP BY sales.orders_id,date_date
     ORDER BY sales.orders_id DESC

