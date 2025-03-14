-- Syntax 
with [RECURSIVE] CTE_name as
	(
    SELECT query (non recursive query or the base query)
    UNION [ALL]
	SELECT query(recursive query using CTE_name [with a termination condition])
    )
select * from CTE_name;


-- queries 
-- 1 display number from 1 to 10 without using any built in function
-- 2 find the hierarchy of emp under a given manager
-- 3 find the hierarchy of manager for a given emp

with recursive numbers as
(select 1 as n
union
select n + 1
from numbers where n <10
)
select * from numbers;