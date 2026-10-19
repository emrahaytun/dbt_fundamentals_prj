select
 order_id, 
 count(distinct order_status)
from {{ ref('stg_dbt_eaytun__orders') }}
group by order_id 
having  count(distinct order_status) =   999999999999

--Not: Singular yani custom testlerde sorgu kayıt döndürmez ise TEST SUCCESS
--Not devam: sonuç döndürür ise o zaman TEST FAIL