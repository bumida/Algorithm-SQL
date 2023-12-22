-- 코드를 입력하세요
SELECT
    Extract(Hour from DATETIME) as hour
    , count (DATETIME) as count

from ANIMAL_OUTS 

where Extract(Hour from DATETIME) >=9 and Extract(Hour from DATETIME) < 20
group by Extract(Hour from DATETIME)
order by 1 asc