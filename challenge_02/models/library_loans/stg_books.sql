select distinct *, 'Factual' as genre
from {{ source("library", "books_factual") }}
where book_id is not null
union select distinct *, 'Fictional' as genre
from {{ source("library", "books_fictional") }}
where book_id is not null