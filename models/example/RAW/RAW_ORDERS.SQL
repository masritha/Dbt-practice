{{
    config(
        materialized='table' 
          
    )
}}

SELECT * FROM
{{source('GLOBALMART', 'ORDERS')}}