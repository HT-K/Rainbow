---------------------------------------
-- 완성된 댓글테이블
CREATE TABLE RainbowReply( 
	reply_seq INT PRIMARY KEY AUTO_INCREMENT,
	writer_name VARCHAR(20),
	reg_time DATETIME,
	reply_content TEXT,
	movie_seq INT,
	CONSTRAINT movie_seq_fk FOREIGN KEY(movie_seq)
	REFERENCES RainbowMovie(movie_seq) ON DELETE CASCADE
);
----------------------------------------