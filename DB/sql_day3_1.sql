use 한빛무역;

select rand(20240405);

select round(rand()*2); /* 0<= rand() < 1 */

select now();
select curdate();
select curtime();

select year(now()), month(now());

select quarter(now()); /* 분기 */
select hour(now()), minute(now());
select day(now());

select datediff('2024-05-01','2024-04-05'); /* datediff(끝일자, 시작일자) */
select datediff('2024-04-05','2024-05-01');

select timestampdiff(day,now(),'2024-04-30'); /* 단위, 시작, 끝 */
select timestampdiff(month,now(),'2024-04-30'); /* 단위, 시작, 끝 */
select timestampdiff(year,now(),'2025-04-30'); /* 단위, 시작, 끝 */

select adddate(now(), interval 20 day);
select adddate(now(), interval 20 month);
select adddate(now(), interval 20 hour);

select subdate(now(), interval 20 day); /* 이전 */

select last_day(now()); /* 현재 월의 마지막 일자 */
select dayofyear(now());/* 올해 며칠이 경과일 */
select weekday(now()); /* 요일 */

/* 데이터 형 변환 : cast(값 as 변환타입), convert() */
select cast('1' as unsigned); /* 문자 '1' -> 부호없는숫자 */
select cast('1' as signed); /* 문자 '1' -> 부호있는숫자 */
/*
1byte = 8bit => 1bit:부호(0 또는 1), 7bit:숫자
7bit = -128...0, ...127
1byte = 8bit => 8bit:숫자 = 0~255

4 byte 공간 숫자를 저장
*/

select cast(1 as char(1)); /* 숫자 1 -> 문자 1 */
select convert(1, char(1)); /* 숫자 1 -> 문자 1 */

/* if(조건식, 참, 거짓) */
select if(1+2 > 0, '양수', '음수');

select ifnull(null,0);
/* 
ifnull함수의 1번째 인수가 null이 아니면 1번째 인수가 리턴,
1번째 인수가 null이면 두번째 인수가 리턴
*/

select ifnull(5,10);
select ifnull(null,10);

select nullif(3,5);/* 같으면 null, 다르면 1번째 인수가 리턴 */

/* when 조건1 then 값1 when 조건2 then 값2... */
select case when 100*2 > 150 then '합격'
when 100*2 > 500 then '불합격'
else '재시험'
end;

/*
select 그룹으로 묶을 열, 집계함수
from 테이블명
[where 조건절]
group ny 그룹으로 묶을 열(번호)
*/
select sum(마일리지), max(마일리지), min(마일리지), avg(마일리지) from 고객
where 도시 = '서울특별시';
/* 도시 단위로 그룹화 -> 그룹별 마일리지의 합계 */
select 도시, sum(마일리지) as 마일리지합계, avg(마일리지) as 마일리지평균
from 고객
group by 도시;

/* 각 도시별 '고객수' 열을 추가 */
select 도시, count(*) as 고객수, sum(마일리지) as 마일리지합계, avg(마일리지) as 마일리지평균
from 고객
group by 도시;

select 담당자직위
from 고객
group by 담당자직위;

select 도시
from 고객
group by 도시;

/* 담당자직위별로 그룹화, 같은 담당자직위에 대해서 도시별로 그룹화 -> 집계 */
select 담당자직위
from 고객
group by 담당자직위;

/* having 절 : group by에 대한 조건 */
/*
select 그룹으로 묶을 열, 집계함수
from 테이블명
[where 조건절]
group by 그룹으로 묶을 열(번호)
[having 절];
*/

select 도시, 담당자직위, max(마일리지) 
from 고객 where 도시 like '%광역시' 
group by 도시, 담당자직위 having max(마일리지) > 5000;

/* with rollup : 그룹별 소계, 전체 총계 구하고자할때 사용, group by 다음에 기술 */
select 도시, count(*) as 고객수,
		avg(마일리지) as 평균마일리지
from 고객
where 지역 is null
group by 도시주문
with rollup;

select 담당자직위, 도시, count(*) as 고객수
from 고객
where 담당자직위 like '%마케팅%'
group by 담당자직위, 도시;
