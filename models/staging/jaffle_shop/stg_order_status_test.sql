select
 order_id, 
 count(distinct order_status)
from {{ ref('stg_dbt_eaytun__orders') }}
group by order_id 
having  count(distinct order_status) =  1