select car_id
,case when count(case when start_date <= '2022-10-16' and end_date >= '2022-10-16' then 1 else null end) > 0 then '대여중' else '대여 가능' end AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY A
group by car_id
order by car_id desc;