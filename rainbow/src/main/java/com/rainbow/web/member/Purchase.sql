---------------------------------------
-- 완성된 구매테이블
CREATE TABLE RainbowPurchase( 
	purchase_seq INT PRIMARY KEY AUTO_INCREMENT,
	member_seq INT,
	movie_seq INT,
	begin_time VARCHAR(30),
	screen_seq INT,
	reserve_seat VARCHAR(50),
	reserve_member VARCHAR(30),
	purchase_price VARCHAR(30),
	purchase_time DATETIME
);
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