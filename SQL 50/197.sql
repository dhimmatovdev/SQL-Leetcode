-- Write your PostgreSQL query statement below
-- select ws1.id from Weather ws1
-- where ws1.temperature > (
--     select temperature from Weather where id = ws1.id - 1)
-- with ws as (select * from Weather order by 2 asc)

-- select ws.id from Weather as ws where ws.temperature > (select temperature from Weather where recordDate = ws.recordDate - 1)


select current_day.id
from Weather as current_day
where exists (
    select 1
    from Weather as yesterday
    where current_day.temperature > yesterday.temperature
        and current_day.recordDate = yesterday.recordDate + 1 
);