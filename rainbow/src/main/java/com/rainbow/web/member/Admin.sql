---------------------------------------
-- 완성된 멤버테이블
CREATE TABLE RainbowAdmin( 
	admin_seq INT PRIMARY KEY AUTO_INCREMENT,
	id VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
----------------------------------------

-------------------------
-- RainbowAdmin 테이블의 모든 내용 검색
SELECT * FROM RainbowAdmin;
-------------------------

---------------------------
-- RainbowAdmin 테이블 삭제하기
DROP TABLE RainbowAdmin CASCADE;
---------------------------

---------------------------------------
INSERT INTO RainbowAdmin(id, password)
VALUES('admin', '1');