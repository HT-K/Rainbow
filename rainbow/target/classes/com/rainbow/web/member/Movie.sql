---------------------------------------
-- 완성된 영화테이블
CREATE TABLE RainbowMovie( 
	movie_seq INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(70),
	rating INT,
	genre VARCHAR(20),
	open_date VARCHAR(30),
	grade VARCHAR(10),
	runningtime VARCHAR(20),
	director VARCHAR(20),
	actor VARCHAR(70),
	content TEXT,
	image VARCHAR(50)
);
----------------------------------------
