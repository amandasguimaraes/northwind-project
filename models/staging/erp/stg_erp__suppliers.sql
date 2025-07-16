with
    source_suppliers as (
        select *
        from {{ source('erp', 'suppliers') }}
    )
    , renamed as (
        select
            cast(id as int) as supplier_pk
            , cast(companyname as varchar) as supplier_name
            --, cast(contactname as varchar) as supplier_contactname
            --, cast(contacttitle as varchar) as supplier_contacttitle
            --, cast(address as varchar) as supplier_address
            , cast(city as varchar) as supplier_city
            , cast(region as varchar) as supplier_region
            --, cast(postalcode as varchar) as supplier_postalcode
            , cast(country as varchar) as supplier_country
            --, cast(phone as varchar) as supplier_phone
            --, cast(fax as varchar) as supplier_fax
            --, cast(homepage as varchar) as supplier_homepage
        from source_suppliers
    )

select *
from renamed