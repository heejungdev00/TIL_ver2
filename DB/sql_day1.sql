INSERT INTO Customer VALUES (1,'홍길동','서울시','010-1234-4567');

INSERT INTO Customer VALUES (2,'이순신','경기도','010-1234-0000');

DELETE FROM Customer WHERE id=1;

INSERT INTO Customer VALUES (1,'홍길동','서울시','010-1234-4567');

UPDATE Customer SET Name='세종대왕' WHERE id=1;

SELECT * FROM Customer;