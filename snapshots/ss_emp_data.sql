{% snapshot snap_emp_timestamp_data%}
{{config(strategy='check',
    target_schema='Snapshot',
    unique_key='emp_id',
    check_cols=['SALARY'])
    }}

    with tb1 as(
        select * from {{source('datafeed_shared','emp_data')}}
    )
    select *from tb1
{% endsnapshot%}