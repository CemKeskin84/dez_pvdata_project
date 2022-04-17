{{ config(materialized='view') }}


select * from {{ source('staging', 'day01')}}

UNION ALL 

select * from {{ source('staging', 'day02')}}

UNION ALL 

select * from {{ source('staging', 'day03')}}-