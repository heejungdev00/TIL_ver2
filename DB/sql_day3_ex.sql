/*1번*/
select 고객회사명, concat('**',substring(고객회사명,3)) as 고객회사명2, 
	전화번호
from 고객;

/*2번*/
select 주문번호, 제품번호, 단가, 주문수량, 할인율, 주문수량*단가 as 주문금액,
	round(주문수량*단가*할인율) as 할인금액, round(주문수량*단가-주문수량*단가*할인율) as 실주문금액
from 주문세부;

/*3번*/
select 이름, 생일, timestampdiff(year, 생일, curdate()) as 만나이,
	입사일, timestampdiff(day,입사일,now()) as 입사일수, 
    adddate(입사일, interval 500 day) as 500일후
from 사원;

/*4번*/
select 담당자명, 고객회사명, 도시, 
	(case when 도시 like '%특별시' or 도시 like '%광역시' then '대도시'
	else '도시' end) as 도시구분, 마일리지,
	(case when 마일리지 >= 100000 then 'VVIP고객' when 마일리지 >= 10000 then 'VIP고객'
    else '일반고객'
    end) as 마일리지구분
from 고객;

/*5번*/
select 주문번호, 고객번호, 주문일, year(주문일) as 주문년도, quarter(주문일) as 주문분기, 
	month(주문일) as 주문월, day(주문일) as 주문일, dayofweek(주문일)as 주문요일,
    (CASE 
        WHEN DAYOFWEEK(주문일) = 1 THEN '일요일'
        WHEN DAYOFWEEK(주문일) = 2 THEN '월요일'
        WHEN DAYOFWEEK(주문일) = 3 THEN '화요일'
        WHEN DAYOFWEEK(주문일) = 4 THEN '수요일'
        WHEN DAYOFWEEK(주문일) = 5 THEN '목요일'
        WHEN DAYOFWEEK(주문일) = 6 THEN '금요일'
        WHEN DAYOFWEEK(주문일) = 7 THEN '토요일'
    END) AS 한글요일
from 주문;

/*6번*/
select 주문번호, 고객번호, 사원번호, 주문일, 요청일, 발송일, 
	datediff(발송일,요청일) as 지연일수
from 주문
having 지연일수 >=7;