with
    int_shippers as (
        select *
        from {{ ref('stg_erp__shippers') }}
    )

select *
from int_shippers