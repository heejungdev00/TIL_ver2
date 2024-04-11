-- 1
SELECT 부서명
FROM 부서
WHERE 부서번호 IN(SELECT 부서번호
FROM 사원
WHERE 이름='배재용');

-- 2
SELECT *
FROM 제품
WHERE NOT EXISTS (SELECT * FROM 주문세부 WHERE 제품.제품번호=주문세부.제품번호);

-- 3
SELECT 담당자명, 고객회사명, COUNT(주문.고객번호) AS 주문건수, MIN(주문일) AS 최초주문일, MAX(주문일) AS 최종주문일
FROM 고객
RIGHT OUTER JOIN 주문
ON 고객.고객번호 = 주문.고객번호
GROUP BY 고객.고객번호;

-- 1.1
INSERT INTO 제품(제품번호, 제품명, 포장단위, 단가, 재고)
VALUES(95,'망고베리 아이스크림', '400g', 800, 30);

-- 1.2
INSERT INTO 제품(제품번호, 제품명, 단가)
VALUES(96,'눈꽃빙수맛 아이스크림', 800);

-- 1.3
UPDATE 제품
SET 재고=30
WHERE 제품번호=96;

-- 1.4
DELETE FROM 부서
WHERE NOT EXISTS(SELECT 부서번호 FROM 사원 WHERE 부서.부서번호=사원.부서번호);