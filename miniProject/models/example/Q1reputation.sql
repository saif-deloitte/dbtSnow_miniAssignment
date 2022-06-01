{{ config(materialized='view') }} select Id,DisplayName,Reputation from {{ ref('user_xml')}}
order by Reputation desc limit 10
