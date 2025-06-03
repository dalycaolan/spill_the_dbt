SELECT *
FROM {{ source("library", "loans") }}
WHERE loan_id is not null
AND book_id is not null
AND member_id is not null
AND book_id IN (SELECT book_id FROM {{ ref('stg_books') }})
AND member_id IN (SELECT member_id FROM {{ ref('stg_members') }})