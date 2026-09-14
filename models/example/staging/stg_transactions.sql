select
    TRANSACTION_ID as transaction_id,
    CUSTOMER_ID as customer_id,
    AMOUNT as amount,
    upper(CURRENCY) as currency,
    upper(STATUS) as status
from DBT_LEARNING.RAW.TRANSACTIONS