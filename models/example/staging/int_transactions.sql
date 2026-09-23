select
    transaction_id,
    customer_id,
    amount,
    currency,
    status,

    case
        when amount < 100 then 'SMALL'
        when amount <= 1000 then 'MEDIUM'
        else 'LARGE'
    end as amount_category

from {{ ref('stg_transactions') }}