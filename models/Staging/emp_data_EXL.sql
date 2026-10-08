{{config(materialized='table',
    transient='false')}}

with tb1 as(
    select * from {{source('datafeed_shared','emp_data')}}
)

select * from tb1 where company='EXL'