select 
--from raw_orders
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice-o.ordercostprice as orderprofit,
--from raw_customers
c.customerid,
c.customername,
c.country,
c.segment,
--from raw_products
p.productid,
p.productname,
p.category,
p.subcategory
from {{ref('RAW_ORDERS')}} as o
left join {{ref('RAW_CUSTOMERS')}} as c
on o.customerid=c.customerid
LEFT JOIN {{ref('RAW_PRODUCTS')}} as p
on o.productid=p.productid