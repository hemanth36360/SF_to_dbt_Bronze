{{config(materialized='incremental',
unique_key='emp_id',
incremental_strategy='merge'
)}}

with tb1 as(
    select * from {{source('datafeed_shared','emp_data')}}
)

select * from tb1