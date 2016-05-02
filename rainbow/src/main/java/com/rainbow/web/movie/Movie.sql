--List
select movie_seq, rating, title, genre, open_date, grade, runningtime,director,actor,content,image 
from Movie
WHERE movie_seq = 1;
--제목으로 검색
select movie_seq, rating, title, genre, open_date, grade, runningtime,director,actor,content,image 
from RainbowMovie
WHERE title = '';
--
select movie_seq, rating, title, genre, open_date, grade, runningtime,director,actor,content,image 
from RainbowMovie
WHERE movie_seq = 1;
--인설트
INSERT INTO RainbowMovie(rating, title, genre, open_date, grade, runningtime,director,actor,content,image)
VALUES( null, '배트맨 대 슈퍼맨: 저스티스의 시작','액션', '2016-03-24', '12세 관람가 ', '151분', '잭 스나이더 ', '헨리 카빌', '슈퍼맨과 조드 장군의 격렬한 전투 이후 메트로폴리스는 파괴되었고... ', 'bantmanVsuperman.jpg');
--업데이트
UPDATE RainbowMovie SET rating= 6, title='시간이탈자', genre='스릴러', open_date='2016-04-13', grade='15세 관람가', runningtime='107분',director='곽재용',actor='임수정',content='서로 다른 시대, 하나의 살인사건',image='Time_Renegades.jpg'
WHERE movie_seq = 6;

--카운트
SELECT COUNT(*)
FROM RainbowMovie;
--삭제
DELETE FROM RainbowMovie
WHERE movie_seq= #{movie_seq};




DROP TABLE RainbowMovie CASCADE;