INSERT INTO Person(ID,Name,Birthday) -- id는 기본키, not null
VALUES (1,'홍길동','1997-01-02');
INSERT INTO Person VALUES (2, '임꺽정', '1999-01-01');

DELETE FROM Person; -- 데이터 삭제, 데이터 구조는 남아있음.

UPDATE Person SET Name='세종대왕';

SELECT * FROM Person; -- 테이블 데이터 모두 출력

INSERT INTO Person(Name,Birthday) VALUES ('김길동','1985-01-02'), ('이길동','1999-11-11');