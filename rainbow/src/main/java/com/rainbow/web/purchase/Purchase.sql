---------------------------------------
-- 완성된 구매테이블
CREATE TABLE Purchase( 
	purchase_seq INT PRIMARY KEY AUTO_INCREMENT,
	member_id VARCHAR(20),
	movie_title VARCHAR(70),
	begin_time VARCHAR(30),
	screen_number VARCHAR(10),
	reserve_seat VARCHAR(50),
	purchase_price INT,
	purchase_time DATETIME,
	adult_count INT,
	student_count INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
----------------------------------------

----------------------------------------------
-- 외래키 추가
ALTER TABLE RainbowPurchase
ADD FOREIGN KEY (member_seq)
REFERENCES RainbowMember(member_seq) ON DELETE CASCADE;

ALTER TABLE RainbowPurchase
ADD FOREIGN KEY(movie_seq) 
REFERENCES RainbowMovie(movie_seq) ON DELETE CASCADE;
-----------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO RainbowPurchase (purchase_seq, member_id, movie_title, screen_number, begin_time, reserve_seat, purchase_price, purchase_time, adult_count, student_count) 
VALUES (1, 'hong', '캡틴 아메리카: 시빌 워', '1관', '2:00', 'A11', 9000, NOW(), 1, 0);
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------
-- Purchase 테이블의 모든 내용 검색
SELECT * FROM Purchase;
-------------------------

---------------------------
-- Purchase 테이블 삭제하기
DROP TABLE Purchase CASCADE;
---------------------------