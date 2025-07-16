with 

source_shippers as (

    select * from {{ source('erp', 'shipper') }}

),

renamed as (

    select
        cast(id as int) as shipper_pk
        , cast(companyname as varchar) as shipper_name
        --, cast(phone as varchar) as shipper_phone
    from source_shippers
)

select * from renamed
