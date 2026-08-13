{{
    config(
        materialized='table' 
          
    )
}}

SELECT * FROM
{{source('GLOBALMART', 'PRODUCTS')}}