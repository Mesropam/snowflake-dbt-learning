select
    transaction_id,
    customer_id,
    amount,
    currency,
    status,
    amount_category,

    case
        when status = 'COMPLETED' then 'SUCCESS'
        when status = 'FAILED' then 'FAILURE'
        else 'OTHER'
    end as transaction_result

from {{ ref('int_transactions') }}