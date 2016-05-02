---------------------------------------
-- 완성된 관리자테이블
CREATE TABLE Admin( 
	admin_seq INT PRIMARY KEY AUTO_INCREMENT,
	id VARCHAR(20),
	password VARCHAR(20)
);
----------------------------------------



SELECT * FROM Admin;

INSERT INTO Admin(id,password)
VALUES ('admin','1');


