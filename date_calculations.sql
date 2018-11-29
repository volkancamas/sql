/*
You can use below queries common date operations.
*/


/*PART-1*/
/*Format Date */

select
current_timestamp as today_as_dtime ,
trunc(sysdate) as today_dt,
to_char(sysdate , 'DAY') as name_of_today ,
trunc(sysdate-1) as yesterday_dt,
trunc(sysdate+1) as tomorrow_dt,
trunc(sysdate , 'mm') as first_day_of_current_mo ,
trunc(sysdate , 'yyyy') as first_day_of_current_yr ,
last_day(sysdate) as last_day_of_current_mo ,
ADD_MONTHS(TRUNC (SYSDATE ,'yyyy'),12)-1 as last_day_of_current_yr,
ADD_MONTHS (TRUNC (SYSDATE, 'yyyy'), -1 ) +30 as last_day_of_prev_yr,
to_char(sysdate , 'DD') as day_of_mo,
to_char(sysdate , 'MM') as mo_of_yr,
to_char(sysdate , 'DDD') as day_of_year,
to_char(sysdate , 'J') as julian_day,
to_char(sysdate , 'Q') as quarter_of_today
from dual

/*PART-2*/
/*Generate specific date range*/
/*Attention leap year when you're writing code ! */

select
(level-1) + to_date(20180101 , 'yyyymmdd') as my_Date
from dual
connect by level<=365
order by 1
