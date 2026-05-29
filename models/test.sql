--THIS ARE DIFERENT MACROS

select *
from {{ source('DEMO', 'BIKE') }}
LIMIT 10


