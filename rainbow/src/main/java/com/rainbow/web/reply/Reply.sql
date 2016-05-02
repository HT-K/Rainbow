---------------------------------------
-- 완성된 댓글테이블
CREATE TABLE Reply( 
	reply_seq INT PRIMARY KEY AUTO_INCREMENT,
	writer_name VARCHAR(20),
	reg_time DATETIME,
	reply_content TEXT,
	movie_seq INT
);
----------------------------------------

SELECT * FROM Reply;

INSERT INTO Reply(writer_name,reg_time,reply_content)
VALUES ('hong', SYSDATE(), NULL);

UPDATE Reply SET writer_name ='kim' , reply_content = NULL
WHERE writer_name = 'hong';



SELECT * FROM Reply WHERE reply_seq = '2';

DROP TABLE Reply;