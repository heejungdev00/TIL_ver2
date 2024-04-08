select * from 사원;  /*10건*/
select * from 부서;/*4건*/

select * from 부서 
cross join 사원
where 이름='이소미';

select 부서.부서번호, 부서명, 이름, 사원.부서번호 as 사원부서번호 from 부서 
cross join 사원
where 이름='이소미';

select 부서.부서번호, 부서명, 이름, 사원.부서번호 as 사원부서번호 
from 부서, 사원
where 이름='이소미';

select *
from 사원
inner join 부서
on 사원.부서번호 = 부서.부서번호
where 이름='이소미';

SELECT *
FROM 사원, 부서
WHERE 사원.부서번호=부서.부서번호 AND 이름="이소미";

select *
from 고객;

select *
FROM 고객
inner JOIN 주문
ON 고객.고객번호 = 주문.고객번호;

SELECT 고객.고객번호, 담당자명, 고객회사명, COUNT(*) AS 주문건수 
FROM 고객
INNER JOIN 주문
ON 고객.고객번호 = 주문.고객번호
GROUP BY 고객.고객번호, 담당자명, 고객회사명
order by COUNT(*) DESC;

select 고객.고객번호, 담당자명, 고객회사명, COUNT(*) AS 주문건수
FROM 고객, 주문
WHERE 고객.고객번호 = 주문.고객번호
GROUP BY 고객.고객번호, 담당자명, 고객회사명
ORDER BY COUNT(*) DESC;

SELECT 고객번호, 고객회사명, 담당자명
FROM 고객;

SELECT *
FROM 주문;

SELECT 고객.고객번호, 고객회사명, 담당자명
FROM 고객
INNER JOIN 주문
ON 고객.고객번호 = 주문.고객번호;

SELECT *
FROM 주문세부;

/*고객별  주문금액의 합계(SUM(주문수량 * 단가))를 출력(내림차순) */
SELECT 고객.고객번호, 고객회사명, 담당자명,SUM(주문수량 * 단가) AS 주문금액합계
FROM 고객
INNER JOIN 주문
ON 고객.고객번호 = 주문.고객번호
INNER JOIN 주문세부
ON 주문.주문번호 = 주문세부.주문번호
GROUP BY 고객.고객번호, 고객회사명, 담당자명;

SELECT 고객번호, 담당자명,마일리지, 등급명, 하한마일리지, 상한마일리지
FROM 고객
CROSS JOIN 마일리지등급
WHERE 담당자명='이은광';

/*고객테이블의 마일리지 값을 마일리지등급 테이블의 하한, 상한 마일리지 값의 범위에 따라 내부 조인*/
SELECT 고객번호, 고객회사명, 담당자명, 마일리지
FROM 고객
INNER JOIN 마일리지등급
ON 마일리지 >= 하한마일리지 AND 마일리지 <= 상한마일리지
WHERE 담당자명='이은광';

select 고객번호, 고객회사명, 담당자명, 마일리지, 등급명
from 고객
inner join 마일리지등급
on 마일리지 between 하한마일리지 and 상한마일리지 
where 담당자명='이은광';

/* 사원테이블을 기준으로 부서 테이브로가 외부조인 */
SELECT 부서명, 사원.*
FROM 사원
RIGHT OUTER JOIN 부서	/*LEFT, RIGHT, FULL(mysql 지원X -> UNION 사용)*/
ON 사원.부서번호 = 부서.부서번호;

SELECT 이름, 부서.부서번호,부서명
FROM 사원
LEFT OUTER JOIN 부서	/*LEFT, RIGHT, FULL(mysql 지원X -> UNION 사용)*/
ON 사원.부서번호 = 부서.부서번호
WHERE 부서명 IS NULL;

/*셀프 조인 - 사원번호, 사원이름, 상사의사원본호, 상사의이름 출력 */
SELECT 사원.사원번호, 사원.이름, 상사.사원번호, 상사.이름
FROM 사원
INNER JOIN 사원 AS 상사
ON 사원.상사번호 = 상사.사원번호;

SELECT 사원.이름 AS 이름, 사원.직위, 상사.이름 AS 상사이름
FROM 사원 AS 상사
RIGHT OUTER JOIN 사원 
ON 사원.상사번호 = 상사.사원번호
ORDER BY 상사이름;
