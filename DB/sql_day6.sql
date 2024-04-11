USE 한빛무역; 

/* 고객 테이블에서 주문번호가 'H00250'인 고객에 대해 고객회사명, 담당자명을 추출하시오. */
select 고객회사명, 담당자명
FROM 고객
WHERE 고객번호=(SELECT 고객번호 FROM 주문 WHERE 주문번호='H0250');

/* 부산광역시 고객의 최소마일리지보다 더 큰 마일리지를 가진 모든 고객 정보를 추출하시오 */
select *
FROM 고객
WHERE 마일리지 > (SELECT min(마일리지) FROM 고객 WHERE 도시='부산광역시');

SELECT *
FROM 주문;

/*부산광역시 고객의 전체 주문건수를 출력*/
SELECT COUNT(*) AS 주문건수
FROM 주문
WHERE 고객번호 IN (SELECT 고객번호
FROM 고객
WHERE 도시='부산광역시');

/* 부산광역시 전체 고객의 마일리지를 추출 */
SELECT 마일리지
FROM 고객
WHERE 고객번호 IN (SELECT 고객번호
FROM 고객
WHERE 도시='부산광역시');
/* 최소 1명 이상의 부산광역시 고객마일리지보다 더 큰 고객의 정보를 출력 */
/* ANY: 서브쿼리의 각 결과에 대해 비교했을 때 최소 1건이상 조건이 만족되는 자료를 추출 */
SELECT *
FROM 고객
WHERE 마일리지 > ANY(SELECT 마일리지
FROM 고객
WHERE 도시='부산광역시');

/* 각 지역의 어느 평균 마일리지보다도 더 큰 마일리지를 갖고 있는 고객 정보를 추출 */
/* ALL 여러개 모두에 대해 조건에 부함하면 추출 */
SELECT *
FROM 고객
WHERE 마일리지 > ALL(SELECT avg(마일리지)
FROM 고객
GROUP BY 지역);

/* 고객 중에서 최소 1번 이상 주문한 적이 있다면 해당 고객의 정보를 추출 */
SELECT *
FROM 고객
WHERE 고객번호 IN (SELECT 고객번호 FROM 주문);

SELECT *
FROM 고객
WHERE EXISTS (SELECT 고객번호 FROM 주문 WHERE 고객번호=고객.고객번호);

select distinct 고객회사명
FROM 고객
INNER join 주문
ON 고객.고객번호 = 주문.고객번호;

/* 고객 전체의 평균마일리지보다 평균마일리지가 큰 도시에 대해 도시명, 도시의 평균 마일리지를 추출 */
SELECT 도시, AVG(마일리지)
FROM 고객
GROUP BY 도시
HAVING AVG(마일리지) >(SELECT AVG(마일리지) FROM 고객);

select 도시, avg(마일리지) as 평균마일리지
from 고객
group by 도시
having avg(마일리지) > (select avg(마일리지) from 고객);

/* DML:데이터 조작어 */
INSERT INTO 부서
VALUES('A5', '마케팅부');

SELECT *
FROM 부서;

INSERT INTO 제품
VALUES(999,'맛동산', NULL, 1500,10);

SELECT * FROM 제품;

INSERT INTO 제품(제품번호, 제품명, 단가, 재고)
VALUES(888, '새우깡', 2000, 50);

INSERT INTO 제품(제품명, 단가, 재고)
VALUES('감자깡', 1000, 30); /* 에러 발생 */

SELECT *
FROM 사원;

INSERT INTO 사원(사원번호, 이름, 직위, 성별, 입사일)
VALUES('E20', '홍길동', '수습사원', '남', curdate());

SELECT *
FROM 사원;

INSERT INTO 사원(사원번호, 이름, 직위, 성별, 입사일)
VALUES('E21', '임꺽정', '수습사원', '남', curdate()),
('E22', '신사임당', '수습사원', '여', curdate());

SELECT *
FROM 사원;

/* UPDATE:데이터를 변경
UPDATE 테이블명 
SET 컬럼 = 값,
컬럼 = 값
WHERE 조건
*/

UPDATE 사원
SET 이름='김소미'
WHERE 사원번호='E01';

SELECT * FROM 사원;

/* 
1. 고래밥, 제품번호:111, 단가:2500, 재고:40추가
2. 고래밥 -> 상어밥으로 변경
3. 새우깡의 단가를 10퍼 인상
4. 맛동산의 재고를 10 증가
 */
 INSERT INTO 제품(제품번호, 제품명, 단가, 재고)
 VALUES(111,'고래밥',2500,40);
 
 UPDATE 제품
 SET 제품명='상어밥'
 WHERE 제품명='고래밥';
 
 SELECT * FROM 제품;
 
 UPDATE 제품
 SET 단가=1.1*단가
 WHERE 제품명='새우깡';
 
 UPDATE 제품
 SET 재고=재고+10
 WHERE 제품명='맛동산';
 
 /*
 DELETE FROM 테이블명
 WHERE 조건
 */
 
 SELECT * FROM 제품;
 
 DELETE FROM 제품
 WHERE 제품번호=999;
 
 SELECT * FROM 사원
 ORDER BY 입사일 DESC
 LIMIT 3;
 
 DELETE FROM 사원
 order by 입사일 DESC
 LIMIT 5;
 
  SELECT * FROM 부서;

/* 데이터 추가시 이미 데이터가 있으면 값을 변경하고, 없으면 데이터를 제거 */
INSERT INTO 부서(부서번호, 부서명)
VALUES('A1', '총무부');

INSERT INTO 부서(부서번호, 부서명)
VALUES('A1', '총무부')
ON DUPLICATE KEY UPDATE
부서명='총무부';

/*
INSERT INTO 테이블명(컬럼1, 컬럼2,..)
VALUES(값1, 값2,...);

INSERT INTO 테이블명(컬럼1, 컬럼2,..)
SELECT 컬럼1, 컬럼2,..
FROM 테이블명
WHERE 조건;
*/

-- INSERT INTO 고객(고객번호, 담당자명, 주소, 마일리지)
-- SELECT 고객번호, 담당자명, 주소, 마일리지
-- FROM 고객2
-- WHERE 주소='서울특별시';
-- 고객2테이블에서 주소가 서울특별시인 고객의 고객번호ㅡ 담당자명, 주소, 마일리지를
-- 각각 추출하여 고객테이블의 열에 추가.

CREATE TABLE 고객2
(
고객번호 CHAR(5) PRIMARY KEY
,담당자명 VARCHAR(20)
,주소 VARCHAR(50)
,마일리지 INT
);

SELECT * FROM 고객2;

INSERT INTO 고객2(고객번호, 담당자명, 주소, 마일리지)
VALUES('AAAA','홍길동', '서울특별시', 50000);

SELECT * FROM 고객2;

INSERT INTO 고객(고객번호, 담당자명, 주소, 마일리지)
SELECT 고객번호, 담당자명, 주소, 마일리지
FROM 고객2;

SELECT * FROM 고객;

INSERT INTO 고객2(고객번호, 담당자명, 주소, 마일리지)
VALUES('BBBB', '임꺽정', '광주광역시', 10000);

DELETE FROM 고객
WHERE 고객번호='BBBB';

INSERT INTO 고객(고객번호, 담당자명, 주소, 마일리지)
SELECT 고객번호, 담당자명, 주소, 마일리지
FROM 고객2;

