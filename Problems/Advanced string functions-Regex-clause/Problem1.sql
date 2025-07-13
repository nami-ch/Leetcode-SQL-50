--- substring(string, start_position, length of the charactes to be extracted)
--- start_position is based on 1-indexing 

select user_id, concat( upper(substring(name,1,1)), lower(substring(name,2))) as name
from users
order by user_id 
