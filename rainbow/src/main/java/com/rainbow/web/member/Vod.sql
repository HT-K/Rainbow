CREATE TABLE Member( 
	member_seq INT PRIMARY KEY AUTO_INCREMENT,
	id VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL,
	name VARCHAR(30) NOT NULL,
	gender VARCHAR(10),
	birth VARCHAR(30),
	addr VARCHAR(70),
	point INT,
	grade VARCHAR(10),
	reg_date DATETIME
);

create table Vod(
	vod_name VARCHAR(200) PRIMARY KEY,
	vod_content_title VARCHAR(300) null,
	vod_content VARCHAR(3000) NULL,
	vod_price INT NOT NULL,
	vod_category VARCHAR(50) NOT NULL,
	vod_time INT NOT NULL,
	vod_rating varchar(10) null, 
	vod_url VARCHAR(1000) not null, 
	vod_image VARCHAR(50) not null,
	vod_date datetime not null,
	vod_free VARCHAR(10) default 'n',
	vod_grade VARCHAR(20) null,
	vod_actor VARCHAR(60) null,
	vod_director VARCHAR(100) not null,
	vod_country VARCHAR(100) null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
drop table Vod;
	    UPDATE Vod 
	    set 
	    vod_content = '니 내랑 부산 접수할랭???',
	    vod_country = '한쿡인'

	    WHERE vod_name = '친구2';
		
show tables;
drop table RainbowVod;

SELECT * FROM RainbowMovie;
SELECT * FROM Vod;
SELECT * FROM Member;
SELECT * FROM RainbowVod WHERE vod_name = '친구2';

		SELECT 
     	  	id,
       		password,
       		name,
       		gender,
	        birth,
	        addr,
	        email,
	        point,
	        grade
    	FROM RainbowMember 
  		where id = 'bingoori' and password = '1';
  		
  		 SELECT COUNT(*) FROM RainbowVod;
  		 
CREATE TABLE RainbowMember( 
	member_seq INT PRIMARY KEY AUTO_INCREMENT,
	id VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL,
	name VARCHAR(30) NOT NULL,
	gender VARCHAR(10),
	birth VARCHAR(30),
	addr VARCHAR(70),
	point INT,
	grade VARCHAR(10),
	reg_date DATETIME
);

insert into Member(id,password,name,gender,birth,addr,email,addr,point,grade,reg_date) 
values ('bingoori','1','빙구리','여','18840101','인천시','bingoor@.com','Unknown',0,'브론즈',now());  

      SELECT 
       id,
       password,
       name,
       gender,
       birth,
       addr,
       email,
       point,
       grade,
       DATE_FORMAT(reg_date,'%Y-%m-%d %T') AS regDate
       FROM RainbowMember
       WHERE id = 'bingoori' and password = '1';

 
truncate table Vod;
SELECT * FROM Vod WHERE vod_name = '친구2';
insert into Vod(vod_name,vod_content,vod_price,vod_category
,vod_time,vod_rating,vod_url,vod_image,vod_date,vod_free,vod_grade,vod_actor,vod_director,vod_country) 
values('대배우','대배우를 꿈꾸는 20년차 무명배우 장성필! 
  
 아동극 ‘플란다스의 개’의 파트라슈 역할 전문으로 20년째 대학로를 지키고 있는 ‘성필’. 
 극단 생활을 함께했던 ‘설강식’이 국민배우로 승승장구하는 것을 보며 언젠가 자신도 대배우가 되리라 다짐한다. 
 하지만 여전히 대사 한마디 없는 개 역할에서 벗어나기 어렵고, 이제는 가족들마저 짐처럼 느껴지기 시작한다. 
  
 세계적인 깐느박 감독 작품 신인 배우 모집! 
  
 전세계가 인정한 대한민국 대표감독 ‘깐느박’. 그가 새영화 <악마의 피>의 사제 역할로 뉴페이스를 찾고 있다. 
 ‘성필’에게는 자신의 연기를 만인 앞에 선보일 수 있는 절호의 찬스! ‘성필’은 일생일대의 메소드 연기를 준비하는데…'
 	,5000
	,'코미디'
	,108
	,'7.36'
	,'/youtube/friend'
	,'/vod_image/comics/thegreatactor.jpg'
	,'2016-03-30'
	,'n'
	,'[국내]12세관람가'
	,'석민우'
	,'오달수, 윤제문, 이경영'
	,'한국'
	);