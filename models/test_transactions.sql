select *
from {{ source('google_drive', 'TRANSACTIONS') }}