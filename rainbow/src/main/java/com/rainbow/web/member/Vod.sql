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

SELECT *
FROM Vod
WHERE DATE_FORMAT(now(),'%Y-%m-%d') - DATE_FORMAT(vod_date,'%Y-%m-%d') > 30;  
SELECT DATEDIFF(NOW(),DATE_FORMAT(vod_date,'%Y-%m-%d'))
FROM Vod;


17

select *
from Vod
WHERE DATE_FORMAT(vod_date,'%Y-%m-%d') ;

-- 100일 미만이면 최신 8
SELECT * 
FROM Vod
WHERE DATEDIFF(NOW(),DATE_FORMAT(vod_date,'%Y-%m-%d')) <= 180;
-- 365일 미만 일반 7
SELECT *
FROM Vod
WHERE DATEDIFF(NOW(),DATE_FORMAT(vod_date,'%Y-%m-%d')) < 365 AND DATEDIFF(NOW(),DATE_FORMAT(vod_date,'%Y-%m-%d')) > 180;
-- 365일 보다 크면 무료 영화 6
SELECT *
FROM Vod
WHERE DATEDIFF(NOW(),DATE_FORMAT(vod_date,'%Y-%m-%d')) > 365;

select * from Vod where vod_name like '%스%';

truncate table Vod;

SELECT * FROM Vod;

	  