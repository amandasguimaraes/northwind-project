with
    int_customers as (
        select *
        from {{ ref('stg_erp__customers') }}
    )

select *
from int_customers