/*How To Generate Rows (Connect By Level)*/

select 
  level
from dual
connect by level <= 100

/* You can parametrize 100 value depending on your requirement */
