select * from 고객;

select 고객번호, 담당자명, 고객회사명, 마일리지 AS 포인트, 마일리지 * 1.1 AS "10%인상된 마일리지"
from 고객;

select 고객번호, 담당자명, 마일리지 
from 고객
where 마일리지 >= 100000;

select 고객번호, 담당자명, 도시, 마일리지 AS포인트
from 고객
where 도시 = '서울특별시'
order by 마일리지 desc;

select *
from 고객
limit 3;

select *
from 고객
order by 마일리지 desc
limit 3;

select distinct 도시
from 고객;

select 23 + 5 AS 더하기
		,23 - 5 AS 빼기
        ,23 * 5 AS 곱하기
        ,23 / 5 AS 실수나누기
        ,23 DIV 5 AS 정수나누기
        ,23 % 5 AS 나머지1
        ,23 MOD 5 AS 나머지2;

select 23 >=5
		,23 <= 5
        ,23 > 23
        ,23 < 23
        ,23 = 23
        ,23 != 23
        ,23 <> 23;
        
select *
from 고객
where 담당자직위 <> '대표 이사';

select *
from 고객
where 도시 = '부산광역시'
and 마일리지 < 1000;

select 고객번호, 담당자명, 마일리지, 도시
from 고객
where 도시 = '부산광역시'
union
select 고객번호, 담당자명, 마일리지, 도시
from 고객
where 마일리지 < 1000
order by 1;

select 고객번호, 담당자명, 마일리지, 도시
from 고객
where 도시='부산광역시'
or 마일리지 < 1000
order by 1;

select 고객번호, 담당자명, 마일리지, 도시
from 고객
where 도시='부산광역시'
or 마일리지 < 1000
order by 1;

select *
from 고객
where 지역 is null;

select *
from 고객
where 지역='';

update 고객
set 지역 = null
where 지역 = '';

select *
from 고객
where 지역 is null;

