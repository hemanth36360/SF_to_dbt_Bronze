{{config(materialized='table')}}

with tb1 as(
    select * from {{source('datafeed_shared','emp_data')}}
)

select *from tb1 where salary>85000