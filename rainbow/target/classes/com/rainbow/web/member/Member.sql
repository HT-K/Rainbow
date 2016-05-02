---------------------------------------
-- 완성된 멤버테이블
CREATE TABLE RainbowMember( 
	member_seq INT PRIMARY KEY AUTO_INCREMENT,
	id VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL,
	name VARCHAR(30) NOT NULL,
	gender VARCHAR(10),
	birth VARCHAR(30),
	addr VARCHAR(70),
	email VARCHAR(50),
	point INT,
	grade VARCHAR(10),
	reg_date DATETIME
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
----------------------------------------

-------------------------
-- RainbowMember 테이블의 모든 내용 검색
SELECT * FROM RainbowMember;
-------------------------

---------------------------
-- RainbowMember 테이블 삭제하기
DROP TABLE RainbowMember CASCADE;
---------------------------