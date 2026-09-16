with source as (

    select *
    from {{ source('google_drive', 'TRANSACTIONS') }}

),

renamed as (

    select
        transaction_id,
        merchant_id,
        amount,
        country,
        _fivetran_synced as loaded_at

    from source

)

select *
from renamed