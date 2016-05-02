--------------------------------------------------
-- 완성된 예약좌석 테이블
CREATE TABLE ReserveSeat( 
	reserve_seq INT PRIMARY KEY AUTO_INCREMENT,
	movie_title VARCHAR(70),
	screen_number VARCHAR(10),
	reserve_date VARCHAR(30),
	begin_time VARCHAR(30),
	seat VARCHAR(70)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
--------------------------------------------------

-------------------------
-- ReserveSeat 테이블의 모든 내용 검색
SELECT * FROM ReserveSeat;
-------------------------

----------------------------------
-- ReserveSeat 테이블 삭제하기
DROP TABLE ReserveSeat CASCADE;
----------------------------------

---------------------------------
SELECT COUNT(*) FROM ReserveSeat
---------------------------------