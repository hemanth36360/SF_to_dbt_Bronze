{% snapshot ss_milk_data%}

{{ config(strategy='timestamp',
          target_schema='SNAPSHOT',
          unique_key='client_id',
          updated_at='updated_at')
}}

with tb1 as(
    select * from {{source('datafeed_shared','MILK_PURCHASE_DATA')}}
)

select * from tb1

{% endsnapshot%}