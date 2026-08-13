select 
    productid,
    productname,
    category,
    subcategory,
sum(orderprofit) as total_profit
from {{ref('stg_orders')}}
group by    
    productid,
    productname,
    category,
    subcategory