select 
customerid,
segment,
country,
sum(orderprofit) as total_profit
from {{ref('stg_orders')}}
group by    
customerid,
segment,
country