with source as (
    select 
        id as customer_id,
        first_name as firstname,
        last_name as lastname 
    from {{ source('jaffle_shop', 'customers') }}
)

select * from source