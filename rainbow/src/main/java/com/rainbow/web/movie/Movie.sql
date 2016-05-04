---------------------------------------
-- 완성된 영화테이블
CREATE TABLE Movie( 
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
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
----------------------------------------

-------------------------
-- Movie 테이블의 모든 내용 검색
SELECT * FROM Movie;
-------------------------

---------------------------
-- Movie 테이블 삭제하기
DROP TABLE Movie CASCADE;
---------------------------


--List
select movie_seq, rating, title, genre, open_date, grade, runningtime,director,actor,content,image 
from Movie
WHERE movie_seq = 1;
--제목으로 검색
select movie_seq, rating, title, genre, open_date, grade, runningtime,director,actor,content,image 
from Movie
WHERE title = '';
--
select movie_seq, rating, title, genre, open_date, grade, runningtime,director,actor,content,image 
from Movie
WHERE movie_seq = 1;
--인설트
INSERT INTO Movie(rating, title, genre, open_date, grade, runningtime,director,actor,content,image)
VALUES( null, '배트맨 대 슈퍼맨: 저스티스의 시작','액션', '2016-03-24', '12세 관람가 ', '151분', '잭 스나이더 ', '헨리 카빌', '슈퍼맨과 조드 장군의 격렬한 전투 이후 메트로폴리스는 파괴되었고... ', 'bantmanVsuperman.jpg');
--업데이트
UPDATE Movie SET rating= 6, title='시간이탈자', genre='스릴러', open_date='2016-04-13', grade='15세 관람가', runningtime='107분',director='곽재용',actor='임수정',content='서로 다른 시대, 하나의 살인사건',image='Time_Renegades.jpg'
WHERE movie_seq = 6;

--카운트
SELECT COUNT(*)
FROM Movie;
--삭제
DELETE FROM Movie
WHERE movie_seq= #{movie_seq};

-----------------------------
INSERT INTO Movie(title, rating, genre, open_date, grade, runningtime, director, actor, content, image)
VALUES('캡틴아메리카2', null, '액션', '2016-02-17', '12세', '147분', '하워드', '지니퍼', '룰루랄라', 'captain_america_2.jpg');
INSERT INTO Movie(title, rating, genre, open_date, grade, runningtime, director, actor, content, image)
VALUES('해리포터5', null, '판타지', '2016-03-15', '12세', '180분', '롤링', '엠마왓슨', '너무이뻐요yes', 'harry_potter_5.jpg');

