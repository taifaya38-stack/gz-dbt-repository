SELECT campaign_name, date_date, sum(ads_cost) as ads_cost, sum(impression) as impression, sum(click) as click from {{ ref('int_campaigns') }} 
group by campaign_name , date_date
order by date_date desc