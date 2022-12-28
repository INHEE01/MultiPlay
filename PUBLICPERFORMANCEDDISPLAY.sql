DROP SCHEMA PUBLICPERFORMANCEDDISPLAYS;
CREATE SCHEMA PUBLICPERFORMANCEDDISPLAYS;
USE PUBLICPERFORMANCEDDISPLAYS;
-- --------------------------------------------------------------------------------------------
-- DROP TABLE PUBLICPERFORMANCEDDISPLAYS.USERS;
CREATE TABLE USERS (
	USER_NO int primary key auto_increment, -- 유저 일련번호
    USER_ID varchar(100) not null UNIQUE, -- 유저 ID
    USER_PW varchar(100) not null, -- 유저 PW
    USER_NAME varchar(100) not null, -- 유저 이름
    USER_BIRTH varchar(20) not null, -- 유저 생년월일
    USER_PHONE varchar(11) not null, -- 유저 폰
    USER_EMAIL varchar(100) not null, -- 유저 이메일
    USER_ADDRESS varchar(100) not null, -- 유저 주소
	USER_STAMP int DEFAULT 0, -- 유저가 가지고 있는 스탬프 개수
    status varchar(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')), -- 유저의 상태(y : OK / n : 삭제된 유저)
    ENROLL_DATE DATETIME DEFAULT CURRENT_TIMESTAMP, -- 등록된 날짜
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP -- 수정된 날짜
);

insert into users values(0, 'INHEE', '1234', '이인희', '960902', '01095179533', 'inhee@inhee.com', '인희네', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into users values(0, '2INHEE', '1234', '이윤희', '960902', '01095179533', 'inhee@inhee.com', '인희네', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into users values(0, 'WYB', '1234', '왕예빈', '960902', '01095179533', 'inhee@inhee.com', '인희네', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into users values(0, 'PWC', '1234', '박원철', '960902', '01095179533', 'inhee@inhee.com', '인희네', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into users values(0, 'AJH', '1234', '안종호', '960902', '01095179533', 'inhee@inhee.com', '인희네', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into users values(0, 'JWS', '1234', '정우성', '960902', '01095179533', 'inhee@inhee.com', '인희네', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into users values(0, 'CJY', '1234', '최지유', '960902', '01095179533', 'inhee@inhee.com', '인희네', DEFAULT, DEFAULT, DEFAULT, DEFAULT);

select * from users;
-- --------------------------------------------------------------------------------------------
-- DROP TABLE CULTURAL_LIST;
CREATE TABLE CULTURAL_LIST (
	CNO INT PRIMARY KEY AUTO_INCREMENT,
    SEQ INT UNIQUE,
    TITLE VARCHAR(300),
    STARTDATE DATE,
    ENDDATE DATE,
    PLACE VARCHAR(300),
    REALMNAME VARCHAR(30),
    AREA VARCHAR(30),
    THUMBNAIL VARCHAR(2000),
	GPSX DOUBLE,
    GPSY DOUBLE

);

INSERT INTO CULTURAL_LIST(CNO, SEQ, TITLE, STARTDATE, ENDDATE, PLACE, REALMNAME, AREA, THUMBNAIL, GPSX, GPSY) 
VALUES (0, 1, '인희의 영화1', '20221220', '20221225', '인희네1', '공연', '집1', 'WWW.LOCALHOST/THUMBNAIL/IMG1', 36.8, 141.21);
INSERT INTO CULTURAL_LIST(CNO, SEQ, TITLE, STARTDATE, ENDDATE, PLACE, REALMNAME, AREA, THUMBNAIL,  GPSX, GPSY) 
VALUES (0, 2, '인희의 영화2', '20221223', '20221230', '인희네2', '공연', '집2', 'WWW.LOCALHOST/THUMBNAIL/IMG2', 36.8, 141.21);

SELECT * FROM CULTURAL_LIST;
select * from cultural_list where seq = '202280';
-- --------------------------------------------------------------------------------------------
-- DROP TABLE CULTURAL_DETAIL;
CREATE TABLE CULTURAL_DETAIL(
	SEQ INT, -- 공연/전시 번호
    title VARCHAR(300), -- 공연 /전시 제목
    startDate DATETIME,-- 시작 날짜
    endDate DATETIME, -- 종료 날짜
    place VARCHAR(300), -- 공연 장소
    realmName VARCHAR(30), -- 분류
    AREA VARCHAR(30), -- 공연 지역
    subTitle VARCHAR(300), -- 공연 부제
    price VARCHAR(1000), -- 요금안내
    contents1 VARCHAR(500), -- 컨텐츠 섪명1
    contents2 VARCHAR(500), -- 컨텐츠 설명2
    url VARCHAR(1024), -- 공연 URL
    phone VARCHAR(100), -- 문의 전화번호
    imgUrl VARCHAR(1024), -- 이미지 URL 
    gpsX DOUBLE,	-- 경도	
    gpsY DOUBLE,	-- 위도
    placeUrl VARCHAR(1024), -- 공연/전시 장소 URL
    placeAddr VARCHAR(500), -- 공연/전시 장소의 주소
    placeSeq INT, -- 장소 고유번호

	CONSTRAINT PK_CULTURAL_DETAIL PRIMARY KEY CULTURAL_DETAIL(SEQ),
    
    CONSTRAINT FK_CULTURAL_DETAIL_SEQ FOREIGN KEY CULTURAL_DETAIL(SEQ) REFERENCES CULTURAL_LIST(SEQ)
);

SELECT * FROM CULTURAL_DETAIL;
-- --------------------------------------------------------------------------------------------
-- DROP TABLE CULTURAL;
CREATE TABLE CULTURAL (
	CNO INT AUTO_INCREMENT,
    SEQ INT UNIQUE,
    TITLE VARCHAR(300),
    STARTDATE DATE,
    ENDDATE DATE,
    PLACE VARCHAR(300),
    REALMNAME VARCHAR(30),
    AREA VARCHAR(30),
	THUMBNAIL VARCHAR(2000),
    subTitle VARCHAR(300), -- 공연 부제
    price VARCHAR(1000), -- 요금안내
    contents1 VARCHAR(500), -- 컨텐츠 섪명1
    contents2 VARCHAR(500), -- 컨텐츠 설명2
    url VARCHAR(1024), -- 공연 URL
    phone VARCHAR(100), -- 문의 전화번호
    imgUrl VARCHAR(1024), -- 이미지 URL 
	gpsX DOUBLE,	-- 경도	
    gpsY DOUBLE,	-- 위도
    placeUrl VARCHAR(1024), -- 공연/전시 장소 URL
    placeAddr VARCHAR(500), -- 공연/전시 장소의 주소
    placeSeq INT, -- 장소 고유번호
    
    CONSTRAINT PK_CULTURAL PRIMARY KEY CULTURAL(CNO)    
);

SELECT * FROM CULTURAL;
-- --------------------------------------------------------------------------------------------
-- DROP TABLE REVIEW;
CREATE TABLE PUBLICPERFORMANCEDDISPLAYS.REVIEW(
	REVIEW_NO INT auto_increment, -- 리뷰 일련번호
    CNO INT NOT NULL, -- 공연/전시 상세정보 일련번호
    REVIEW_WRITER_NO int, -- 게시물 작성자 (일련번호)
    BOOK_NO int,
	REVIEW_TITLE varchar(200), -- 게시물 제목 200자 제한
    REVIEW_content VARCHAR(1000), -- 게시물 내용 1000자 제한
    REACTION_COUNT INT DEFAULT 0, -- 좋아요 개수
	ORIGINAL_IMG VARCHAR(100), -- 사진파일 이름(원본)
	MODIFY_IMG VARCHAR(100), -- 사진파일 이름(수정본)
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')), -- 상태(y : 게시중인 게시물 / n : 삭제된 게시물)
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, -- 게시물 작성 날짜
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, -- 게시물 수정 날짜
      
    CONSTRAINT PK_BOARD PRIMARY KEY REVIEW(REVIEW_NO), 
     
	CONSTRAINT FK_BOARD_BOOK_NO FOREIGN KEY REVIEW(BOOK_NO) REFERENCES BOOKINFO(BOOK_NO)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
     
    CONSTRAINT FK_BOARD_NO FOREIGN KEY REVIEW(CNO) REFERENCES CULTURAL(cno)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    
	CONSTRAINT FK_REVIEW_WRITER_NO FOREIGN KEY REVIEW(REVIEW_WRITER_NO) REFERENCES USERS(USER_NO) 
    ON UPDATE CASCADE 
    ON DELETE CASCADE
);

select * from REVIEW;
SELECT R.REVIEW_TITLE, U.USER_ID, R.REVIEW_content, R.ORIGINAL_IMG, R.CREATE_DATE, R.REACTION_COUNT, R.STATUS 
FROM REVIEW R JOIN USERS U ON(R.REVIEW_WRITER_NO = U.USER_NO);


INSERT INTO REVIEW VALUES(0, 3,  1, 1, '이번 영화 리뷰',  '이번 영화 리뷰 : 개쩝니다.', DEFAULT, '원본파일명1.png', '변경된파일명1.png', 'Y', DEFAULT, DEFAULT);
INSERT INTO REVIEW VALUES(0, 3,  2, 2, '아 진짜...',  '이번 영화 리뷰 : 개쩝니다.', DEFAULT,  '원본파일명2.png', '변경된파일명2.png', 'Y', DEFAULT, DEFAULT);
insert into REVIEW values(0, 10, 3, 3, '안녕하세요', '어그로입니다 ㅎㅎ.', DEFAULT,  '원본파일명3.png', '변경된파일명3.png', DEFAULT, DEFAULT, DEFAULT);
insert into REVIEW values(0, 8, 4, 4, '이거 내용 이해 되시는분??', '나만 이해 안되는거야?? 나만 이해 안되는거야??', DEFAULT,  '원본파일명4.png', '변경된파일명4.png', DEFAULT, DEFAULT, DEFAULT);
insert into REVIEW values(0, 18, 5, 5, '개꿀잼인데요??.', '라고 할뻔..', DEFAULT,  '원본파일명5.png', '변경된파일명5.png', DEFAULT, DEFAULT, DEFAULT);
insert into REVIEW values(0, 8, 6, 5, '재밌었습니다.', '루즈하지 않고 타임킬링은 좋았습니다 ㅎㅎ', DEFAULT,  '원본파일명6.png', '변경된파일명6.png', DEFAULT, DEFAULT, DEFAULT);
-- --------------------------------------------------------------------------------------------
-- 게시판 분류 : (공지사항/자유게시판/문의게시판)
-- DROP TABLE BOARD;
create table board (
	bno INT AUTO_INCREMENT, -- 게시물 번호
	board_type VARCHAR(20), -- 게시판 종류(공지사항, 자유게시판, 문의게시판)
    writer_no INT, -- 게시물 작성자의 유저 일련번호
	board_title varchar(200), -- 게시물 제목 200자 제한
    board_content VARCHAR(1000), -- 게시물 내용 1000자 제한
	ORIGINAL_FILENAME VARCHAR(100), -- 파일 이름(원본)
	RENAMED_FILENAME VARCHAR(100), -- 파일 이름(수정본)
	READCOUNT INT DEFAULT 0, -- 조회수
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')), -- 상태(y : 게시중인 게시물 / n : 삭제된 게시물)
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, -- 게시물 작성 날짜
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, -- 게시물 수정 날짜
    
    CONSTRAINT PK_BOARD PRIMARY KEY BOARD(BNO, WRITER_NO),
    
    CONSTRAINT FK_BOARD_WRITER FOREIGN KEY BOARD(writer_no) REFERENCES USERS(user_no) 
    ON UPDATE CASCADE 
    ON DELETE CASCADE
);

insert into board values(0, '공지사항', 1, '첫 번째 공지사항입니다.', '내일부터 실습합니다.', '실습파일1.txt', '실습파일1.txt', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into board values(0, '공지사항', 2, '두 번째 공지사항입니다.', '내일부터 수업합니다.', '실습파일2.txt', '실습파일2.txt', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into board values(0, '자유게시판', 3, '자유게시판~~', '안녕하세요.', '사진1.txt', '사진1.txt', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into board values(0, '자유게시판', 4, '테스트 게시판1', '새테스트 게시판1', '사진1.txt', '사진1.txt', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into board values(0, '자유게시판', 5, '테스트 게시판2', '테스트 게시판2', '사진1.txt', '사진1.txt', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into board values(0, '자유게시판', 6, '테스트 게시판3', '마이크 테스트 중..', '사진1.txt', '사진1.txt', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into board values(0, '문의사항', 7, '테스트 게시판4', '출력 테스트 중...', '사진1.txt', '사진1.txt', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
insert into board values(0, '문의사항', 1, '테스트 게시판5', '안녕!', '사진1.txt', '사진1.txt', DEFAULT, DEFAULT, DEFAULT, DEFAULT);
select * from board;
-- --------------------------------------------------------------------------------------------
-- drop table BOARDREPLY;
CREATE TABLE BOARDREPLY(
	REPLY_NO int NOT NULL AUTO_INCREMENT, -- 댓글 일련번호
	BOARD_NO int, -- 댓글이 달린 게시판의 일련번호
	USER_NO int, -- 댓글 작성자의 유저 일련번호
	CONTENT VARCHAR(500), -- 댓글 내용
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
    CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,	-- 작성 시간
	MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP, -- 수정 시간
    
    CONSTRAINT PK_BOARDREPLY PRIMARY KEY BOARDREPLY(REPLY_NO),
    
	CONSTRAINT FK_BOARDREPLY_BOARD_NO FOREIGN KEY BOARDREPLY(BOARD_NO) REFERENCES BOARD(BNO)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    
	CONSTRAINT FK_BOARDREPLY_USER_NO FOREIGN KEY BOARDREPLY(USER_NO) REFERENCES USERS(USER_NO)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO BOARDREPLY VALUES(0, 1, 1, '오 저도 나중에 봐야겠네요 ㅎㅎ', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO BOARDREPLY VALUES(0, 1, 2, '흠... 저는 노잼인거 같은디', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO BOARDREPLY VALUES(0, 2, 1, '오 저도 나중에 봐야겠네요 ㅎㅎ', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO BOARDREPLY VALUES(0, 2, 2, '흠... 저는 노잼인거 같은디', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO BOARDREPLY VALUES(0, 3, 1, '오 저도 나중에 봐야겠네요 ㅎㅎ', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO BOARDREPLY VALUES(0, 3, 2, '흠... 저는 노잼인거 같은디', DEFAULT, DEFAULT, DEFAULT);

select * from BOARDREPLY;
-- --------------------------------------------------------------------------------------------
-- drop table BOOKINFO;
create table BOOKINFO (
	book_no int auto_increment, -- 예매번호
    cultural_no int not null, -- 예매한 공연/전시의 일련번호
    cultural_name varchar(100) not null, -- 예약한 공연/전시 이름
    user_id varchar(100) not null, -- 예약한 사람 ID
    user_name varchar(100), -- 예약한 사람 이름
    user_no int, -- 예약한 사람의 유저 일련번호
    person int not null, -- 인원
    seat varchar(10) not null, -- 좌석
    due_date DATETIME,	-- 공연/전시 시간
    book_price int not null, -- 예매 가격
    payment_method varchar(10) not null, -- 결제 수단
    payment_time DATETIME DEFAULT CURRENT_TIMESTAMP,	-- 결제 시간
    
    CONSTRAINT PK_BOOKINFO PRIMARY KEY BOOKINFO(BOOK_NO),
    
	CONSTRAINT FK_BOOKINFO_USER_NO FOREIGN KEY BOOKINFO(USER_NO) REFERENCES users(USER_NO) 
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    
    CONSTRAINT FK_BOOKINFO_CULTURAL_NO FOREIGN KEY BOOKINFO(cultural_no) REFERENCES CULTURAL(CNO)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

insert into bookINFO values(0, 3, "[소마미술관] 내일전_Drag and Draw", "INHEE", "이인희", 1, 3, 'C4', '2022-12-25',30000, '신용카드', DEFAULT);
insert into bookINFO values(0, 10, "아트스쾃 작가 전시회", "2INHEE", "이윤희", 2, 3, 'C4', '2022-10-30', 30000, '신용카드',  DEFAULT);
insert into bookINFO values(0, 8, "에델현악사중주단과 피아니스트 김강아의 클래식음악으로 듣는 러시아의 정취", "2INHEE", "이윤희", 2, 3, 'G10', '2022-10-30', 30000, '신용카드',  DEFAULT);
insert into bookINFO values(0, 18, "[소마미술관] 드로잉나우(Drawing Now) 전시 안내", "2INHEE", "이윤희", 2, 3, 'L1', '2022-10-30', 30000, '신용카드',  DEFAULT);
insert into bookINFO values(0, 20, "겨울왕국: 겨울이야기 [광주]", "2INHEE", "이윤희", 2, 3, 'C4, D4', '2022-12-25', 120000, '신용카드',  DEFAULT);

select * from bookINFO;
-- ------------------------------------------------------------
drop table rankingList;
create table rankingList (
	pNo int auto_increment,
    rankNo int,
	bookRate double,
    mt20id varchar(10),
    prfnm varchar(100),
    prfpdfrom DATETIME,
    prfpdto DATETIME,
    fdtynm varchar(100),
    poster varchar(300),
    genrenm varchar(10),
    prfstate varchar(10),
    openrun varchar(1),
    
    CONSTRAINT PK_pNo PRIMARY KEY rankingList(pNo)
);
select * from rankingList;
select * from rankingList order by rankNo asc limit 10;
insert into rankingList values(0, 4, 15.3, 'PF185263', '피터팬 [대학로]', '2022-01-08 00:00:00', '2022-12-31 00:00:00', '명작극장 (구 아츠플레이씨어터)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF185263_211229_110447.gif', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 10, 5.3, 'PF181507', '오즈의 마법사 [대학로]', '2021-10-23 00:00:00', '2022-12-31 00:00:00', '명작극장 (구 아츠플레이씨어터)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF181507_211021_112712.gif', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 3, 17.31, 'PF178134', '반짝반짝 인어공주', '2021-08-21 00:00:00', '2023-01-31 00:00:00', '달밤엔씨어터',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF178134_210809_125033.PNG', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 7, 7.6, 'PF172145', '신데렐라 [대학로]', '2021-03-13 00:00:00', '2022-12-31 00:00:00', '명작극장 (구 아츠플레이씨어터)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF172145_210308_093155.gif', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 14, 2.1, 'PF153828', '아기돼지 삼형제 [대학로]', '2019-03-01 00:00:00', '2022-12-31 00:00:00', '명작극장 (구 아츠플레이씨어터)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF153828_190830_112019.jpg', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 9, 5.8, 'PF152141', '북극곰 예술여행', '2019-07-20 00:00:00', '2022-12-31 00:00:00', '북극곰소극장(구.아뮤스소극장)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF152141_190724_140737.jpg', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 11, 4.9, 'PF151901', '요리하는 마술사', '2019-06-29 00:00:00', '2023-03-05 00:00:00', '맛있는 극장',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF151901_190719_134111.gif', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 13, 3.2, 'PF145801', '반짝반짝 라푼젤', '2018-08-01 00:00:00', '2023-01-31 00:00:00', '달밤엔씨어터',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF145801_181213_104716.jpg', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 6, 9.8, 'PF144565', '아기돼지삼형제: 늑대숲 또옹돼지 원정대', '2018-04-07 00:00:00', '2023-01-29 00:00:00', '서연아트홀(구. 인아소극장)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF144565_220811_114818.jpg', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 5, 12.1, 'PF193060', '노리야 학교가자 [대학로]', '2022-07-02 00:00:00', '2023-02-26 00:00:00', '업스테이지(UP Stage)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF193060_220620_105006.png', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 15, 1.7, 'PF196363', '스틸마녀의 환상놀이터 [대학로]', '2022-08-20 00:00:00', '2023-01-08 00:00:00', '소극장 창덕궁',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF196363_220920_140934.jpg', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 8, 7.5, 'PF202775', '호두까기인형 [대학로]', '2022-12-01 00:00:00', '2023-01-01 00:00:00', '봄날아트홀(구. 아리랑소극장)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF202775_221123_103447.gif', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 1, 22.3, 'PF202688', '성냥팔이소녀와 캐롤송', '2022-12-01 00:00:00', '2023-01-01 00:00:00', '서연아트홀(구. 인아소극장)',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF202688_221122_102526.gif', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 2, 21.8, 'PF203384', '스틸의 환상놀이터: 크리스마스편 [대학로]', '2022-12-17 00:00:00', '2022-12-31 00:00:00', '소극장 창덕궁',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF203384_221130_145750.jpg', '뮤지컬', '공연중', 'Y');
insert into rankingList values(0, 12, 4.3, 'PF204093', '오늘하루', '2022-12-26 00:00:00', '2022-12-28 00:00:00', '스튜디오 낙원',
'http://www.kopis.or.kr/upload/pfmPoster/PF_PF204093_221213_103711.gif', '뮤지컬', '공연중', 'Y');
-- ------------------------------------------------------
UPDATE CULTURAL_LIST SET AREA = '부산' WHERE CNO = 2;
UPDATE CULTURAL_LIST SET AREA = '창원' WHERE CNO = 3;
UPDATE CULTURAL_LIST SET AREA = '대구' WHERE CNO = 4;
UPDATE CULTURAL_LIST SET AREA = '부산' WHERE CNO = 6;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 9;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 10;
UPDATE CULTURAL_LIST SET AREA = '광주' WHERE CNO = 11;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 12;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 16;
UPDATE CULTURAL_LIST SET AREA = '부산' WHERE CNO = 17;
UPDATE CULTURAL_LIST SET AREA = '광주' WHERE CNO = 18;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 21;
UPDATE CULTURAL_LIST SET AREA = '부산' WHERE CNO = 22;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 23;
UPDATE CULTURAL_LIST SET AREA = '광주' WHERE CNO = 24;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 27;
UPDATE CULTURAL_LIST SET AREA = '창원' WHERE CNO = 28;
UPDATE CULTURAL_LIST SET AREA = '창원' WHERE CNO = 29;
UPDATE CULTURAL_LIST SET AREA = '광주' WHERE CNO = 30;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 37;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 38;
UPDATE CULTURAL_LIST SET AREA = '광주' WHERE CNO = 39;
UPDATE CULTURAL_LIST SET AREA = '창원' WHERE CNO = 42;
UPDATE CULTURAL_LIST SET AREA = '광주' WHERE CNO = 43;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 47;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 46;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 48;
UPDATE CULTURAL_LIST SET AREA = '광주' WHERE CNO = 49;
UPDATE CULTURAL_LIST SET AREA = '창원' WHERE CNO = 50;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 55;
UPDATE CULTURAL_LIST SET AREA = '광주' WHERE CNO = 56;
UPDATE CULTURAL_LIST SET AREA = '창원' WHERE CNO = 59;
UPDATE CULTURAL_LIST SET AREA = '경기' WHERE CNO = 61;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 62;
UPDATE CULTURAL_LIST SET AREA = '부산' WHERE CNO = 63;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 67;
UPDATE CULTURAL_LIST SET AREA = '경기' WHERE CNO = 69;
UPDATE CULTURAL_LIST SET AREA = '경기' WHERE CNO = 70;
UPDATE CULTURAL_LIST SET AREA = '경기' WHERE CNO = 73;
UPDATE CULTURAL_LIST SET AREA = '경기' WHERE CNO = 74;
UPDATE CULTURAL_LIST SET AREA = '인천' WHERE CNO = 77;
UPDATE CULTURAL_LIST SET AREA = '인천' WHERE CNO = 80;
UPDATE CULTURAL_LIST SET AREA = '인천' WHERE CNO = 81;
UPDATE CULTURAL_LIST SET AREA = '인천' WHERE CNO = 82;
UPDATE CULTURAL_LIST SET AREA = '인천' WHERE CNO = 84;
UPDATE CULTURAL_LIST SET AREA = '인천' WHERE CNO = 86;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 89;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 92;
UPDATE CULTURAL_LIST SET AREA = '대전' WHERE CNO = 93;
UPDATE CULTURAL_LIST SET AREA = '대전' WHERE CNO = 96;
UPDATE CULTURAL_LIST SET AREA = '대전' WHERE CNO = 98;
UPDATE CULTURAL_LIST SET AREA = '서울' WHERE CNO = 99;
UPDATE CULTURAL_LIST SET AREA = '대전' WHERE CNO = 101;

-- ---------------------------------------------------
UPDATE CULTURAL_LIST SET REALMNAME= '무용' WHERE CNO = 2;
UPDATE CULTURAL_LIST SET REALMNAME= '무용' WHERE CNO = 3;
UPDATE CULTURAL_LIST SET REALMNAME= '클래식' WHERE CNO = 6;
UPDATE CULTURAL_LIST SET REALMNAME= '전시' WHERE CNO = 8;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 9;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 11;
UPDATE CULTURAL_LIST SET REALMNAME= '클래식' WHERE CNO = 12;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 17;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 18;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 21;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 24;
UPDATE CULTURAL_LIST SET REALMNAME= '기타' WHERE CNO = 27;
UPDATE CULTURAL_LIST SET REALMNAME= '클래식' WHERE CNO = 28;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 29;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 30;
UPDATE CULTURAL_LIST SET REALMNAME= '뮤지컬' WHERE CNO = 38;
UPDATE CULTURAL_LIST SET REALMNAME= '뮤지컬' WHERE CNO = 39;
UPDATE CULTURAL_LIST SET REALMNAME= '뮤지컬' WHERE CNO = 42;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 43;
UPDATE CULTURAL_LIST SET REALMNAME= '콘서트' WHERE CNO = 49;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 50;
UPDATE CULTURAL_LIST SET REALMNAME= '클래식' WHERE CNO = 56;
UPDATE CULTURAL_LIST SET REALMNAME= '클래식' WHERE CNO = 59;
UPDATE CULTURAL_LIST SET REALMNAME= '연극' WHERE CNO = 61;
UPDATE CULTURAL_LIST SET REALMNAME= '전시' WHERE CNO = 63;
UPDATE CULTURAL_LIST SET REALMNAME= '콘서트' WHERE CNO = 67;
UPDATE CULTURAL_LIST SET REALMNAME= '전시' WHERE CNO = 77;
UPDATE CULTURAL_LIST SET REALMNAME= '전시' WHERE CNO = 80;
UPDATE CULTURAL_LIST SET REALMNAME= '미술' WHERE CNO = 81;
UPDATE CULTURAL_LIST SET REALMNAME= '전시' WHERE CNO = 84;
UPDATE CULTURAL_LIST SET REALMNAME= '전시' WHERE CNO = 86;
UPDATE CULTURAL_LIST SET REALMNAME= '전시' WHERE CNO = 93;
UPDATE CULTURAL_LIST SET REALMNAME= '클래식' WHERE CNO = 96;insert into CULTURAL_LIST values(102, '245481', '2022 멜로망스 콘서트 ', '2022.12.11', '2023.02.11', 'KSB 창원홀', '콘서트', '창원', 'http://tkfile.yes24.com/upload2/perfblog/202211/20221116/20221116-44158.jpg/dims/quality/70/',127.115517876658,  127.115517876652);

insert into CULTURAL_LIST values(103, '245482', '＜O Holy Night＞', '2022.12.24', '2023.01.20', '벡스코', '콘서트', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221114/20221114-44108.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(104, '245483', '카운트 판타지 ', '2022.12.11', '2023.12.25', '올림픽공원', '콘서트', '서울', 'http://tkfile.yes24.com/Upload2/Display/202212/20221201/gmain_top_44262.jpg/dims/quality/70/',127.115517876658,  127.115517876652);
insert into CULTURAL_LIST values(105, '245484', '적재 콘서트 ', '2022.12.21', '2023.01.20', '부산문화회관', '콘서트', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221215/20221215-43925.jpg',127.115517876558,  127.114517876652);
insert into CULTURAL_LIST values(106, '245485', '오로라 내한공연（Aurora Live in Seoul)', '2023.02.13', '2023.02.13', 'YES 24 LIVE HALL', '콘서트', '서울', 'http://tkfile.yes24.com/upload2/perfblog/202211/20221128/20221128-44300.jpg/dims/quality/70/',127.115517876658,  127.115517876652);
insert into CULTURAL_LIST values(107, '245486', '2023 백지영 전국투어 콘서트', '2022.12.24', '2023.01.20', '창원성산아트홀', '콘서트', '창원', 'http://tkfile.yes24.com/upload2/perfblog/202210/20221006/20221006-43740.jpg/dims/quality/70/',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(108, '245487', '검정치마 연말 공연 - Christmas & New Years’s Eve', '2022.12.24', '2023.02.25', '왓챠홀', '콘서트', '서울', 'http://tkfile.yes24.com/upload2/perfblog/202212/20221219/20221219-44456.jpg/dims/quality/70/',127.115517876658,  127.115517876652);
insert into CULTURAL_LIST values(109, '245488', '2023 N.Flying LIVE ‘＆CON3’', '2023.01.07', '2023.01.20', 'YES 24 LIVE HALL', '콘서트', '서울', 'http://tkfile.yes24.com/upload2/perfblog/202212/20221201/20221201-44255.jpg/dims/quality/70/"',127.115517876558,  127.114517876652);
insert into CULTURAL_LIST values(110, '245489', '아담스 내한공연', '2023.01.19', '2023.02.13', 'KBS 아레나', '콘서트', '서울', 'http://tkfile.yes24.com/upload2/perfblog/202212/20221215/20221215-44424.jpg/dims/quality/70/',127.115517876658,  127.115517876652);
insert into CULTURAL_LIST values(111, '245490', 'YES24 콘서트', '2023.01.24', '2023.01.31', '왓챠홀', '콘서트', '대전', 'http://tkfile.yes24.com/upload2/perfblog/202212/20221215/20221215-44375_1.jpg/dims/quality/70/',127.1155185576658,  127.115517876352);
-- ------------------------------------
insert into CULTURAL_LIST values(112, '245520', '합스부르크 600년, 매혹의 걸작들', '2022.12.11', '2023.03.11', '국립중앙박물관', '전시', '서울', 'http://tkfile.yes24.com/Upload2/Display/202210/20221024/gmain_top_43842.jpg/dims/quality/70/',127.115517876658,  127.115517876652);
insert into CULTURAL_LIST values(113, '245521', '뒤뷔페', '2022.12.24', '2023.02.20', '올림픽공원', '전시', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202208/20220825/20220825-43301_1.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(114, '245531', '하리보 골드베렌 100주년 생일 기념전', '2022.12.24', '2023.03.12', '안녕 인사동', '전시', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220922/20220922-43362.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(115, '245541', '외규장각 의궤, 그 고귀함의 의미', '2022.12.24', '2023.02.20', '국립중앙박물관', '전시', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202210/20221031/20221031-43955.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(116, '245551', '〈제주 다이노스 어라이브〉 - Jeju Dinos Alive', '2022.12.24', '2023.02.20', '제주항공우주박물관', '전시', '제주', 'http://tkfile.yes24.com/upload2/PerfBlog/202210/20221028/20221028-42880.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(117, '245561', '프랑코 폰타나 : 컬러 인 라이프', '2022.12.24', '2023.02.20', '마이아트뮤지엄', '전시', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220922/20220922-43614.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(118, '245571', '2023 강원세계산림엑스포', '2022.12.24', '2023.12.20', '올림픽공원', '전시', '강원', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221128/20221128-40444.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(119, '245772', '연극 [사나이 와타나베]', '2022.12.08', '2023.01.15', '플러스씨어터', '연극', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221212/20221212-43518.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(120, '245773', '연극 [한뼘사이]', '2022.12.16', '2023.02.20', '라온아트홀', '연극', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202201/20220126/20220126-38677.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(121, '245774', '연극 [에쿠우스]', '2022.12.04', '2023.02.20', '충무아트센터', '연극', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221121/20221121-43490.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(122, '245775', '음악극 올드위키드송 (Old Wicked Songs)', '2022.12.14', '2023.02.09', '서울 코엑스', '연극', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221226/20221226-44048.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(123, '245779', '장진의 연극 [서툰 사람들]', '2022.11.30', '2023.02.19', 'YES 24 스테이지', '연극', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221121/20221121-43929.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(124, '245776', '연극 〈셰익스피어 인 러브〉', '2022.12.27', '2023.03.20', '예술의전당 CJ 토월극장', '연극', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221213/20221213-44098.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(125, '245777', '연극 [넓은 하늘의 무지개를 보면 내 마음은 춤춘다]', '2022.12.18', '2023.02.19', '국립극장', '연극', '경기', '',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(126, '245778', '연극 [빛나는 버러지]', '2022.11.24', '2023.01.20', '대학로 드림아트센터', '연극', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221212/20221212-43981.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(127, '245790', '[미소티켓] 연극 [옥탑방 고양이]', '2022.12.24', '2023.01.20', '대학로 틴틴홀', '연극', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202110/20211001/20211001-40181.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(128, '245791', '뮤지컬 〈베토벤; Beethoven Secret ', '2023.01.01', '2023.01.24', '예술의전당', '뮤지컬', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221117/20221117-44155.jpg ',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(129, '245792', '뮤지컬 ＜캣츠＞오리지널 내한－부산（Musical CATS）', '2023.01.23', '2023.01.24', '드림씨어터', '뮤지컬', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221114/20221114-44062.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(130, '245793', '태양의서커스 〈뉴 알레그리아', '2023.01.16', '2023.01.30', '잠실종합운동장', '뮤지컬', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202207/20220719/20220719-42947.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(131, '245794', '[부산] 뮤지컬 ＜드라큘라＞', '2023.01.11', '2023.02.24', '소향씨어터', '뮤지컬', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221130/20221130-44316.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(132, '245750', '뮤지컬 〈지저스 크라이스트 수퍼스타〉 50주년 기념 한국 공연', '2023.01.21', '2023.01.24', '아트센터', '뮤지컬', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221128/20221128-43451.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(133, '245760', '뮤지컬 〈루쓰〉', '2023.01.15', '2023.01.24', '아트센터', '뮤지컬', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221212/20221212-44355.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(134, '245748', '2022 푸에르자부르타 웨이라 인 서울 ', '2023.01.20', '2023.01.24', '광립아트센터', '뮤지컬', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221212/20221212-43293.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(135, '245756', '뮤지컬 [미수]', '2022.12.01', '2023.02.22', '대학로 자유극장', '뮤지컬', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202210/20221025/20221025-43907.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(136, '245723', '뮤지컬 〈루드윅 : 베토벤 더 피아노〉', '2022.12.20', '2023.03.12', '예스24스테이지', '뮤지컬', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221114/20221114-44090.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(137, '245798', '뮤지컬 〈로빈〉', '2023.01.09', '2023.04.09', '대학로', '뮤지컬', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221116/20221116-44163.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(138, '245745', '뮤지컬 〈미드나잇 : 앤틀러스〉', '2023.01.01', '2023.01.24', '플러스씨어터', '뮤지컬', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221215/20221215-44374.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(139, '245765', '뮤지컬 〈킹키부츠〉 - 부산', '2022.12.12', '2023.01.24', '예술의전당', '뮤지컬', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220929/20220929-43682.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(140, '245742', '뮤지컬 [우리가 사랑했던 그날]', '2022.11.01', '2023.03.01', '한성아트홀', '뮤지컬', '대구', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221212/20221212-43534.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(141, '245995', '[부산] 뮤지컬 ＜브로드웨이 42번가＞', '2022.02.12', '2023.02.24', '부산문화회관', '뮤지컬', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221117/20221117-44175.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(142, '345995', '유니버설발레단 〈호두까기인형〉', '2023.01.12', '2023.02.24', '세종문화회관', '클래식', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202210/20221018/20221018-43839_1.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(143, '345195', '2022 리처드 용재 오닐 송년 콘서트 : 선물', '2023.01.12', '2023.01.24', '세종문화회관', '클래식', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221107/20221107-44031.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(144, '355995', '왕가위 영화음악 오케스트라 콘서트', '2023.01.12', '2023.02.24', '세종문화회관', '클래식', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221117/20221117-44178.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(145, '345956', '쇼팽 피아노 콩쿠르 우승자 브루스 리우 피아노 리사이틀', '2023.03.12', '2023.03.12', '예술의전당', '클래식', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221227/20221227-44558.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(146, '345923', '빈 소년합창단 신년음악회', '2023.02.15', '2023.02.20', '예술의전당', '클래식', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221228/20221228-44368.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(147, '345915', '쇼팽으로 만나는 지브리 앙상블 베스트', '2023.02.05', '2023.02.05', '예술의전당', '클래식', '서울', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221222/20221222-44501.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(148, '345698', '2023 신년음악회 ［김대진x박재홍］- 대전', '2023.01.05', '2023.01.05', '대전예술의전당', '클래식', '대전', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221215/20221215-44422.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(149, '345976', '[대전] 2023 장윤정 라이브 콘서트', '2023.02.04', '2023.02.04', '대전컨벤션센터', '콘서트', '대전', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221208/20221208-44348.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(150, '244481', '2022 멜로망스 콘서트 ', '2023.02.04', '2023.02.05', '충남대학교', '콘서트', '대전', 'http://tkfile.yes24.com/upload2/perfblog/202211/20221116/20221116-44158.jpg/dims/quality/70/',127.115517876658,  127.115517876652);
insert into CULTURAL_LIST values(151, '345973', '2022 임영웅 콘서트 [IM HERO] - 대전', '2023.01.12', '2023.02.24', '대전컨벤션센터', '클래식', '대전', 'http://tkfile.yes24.com/upload2/PerfBlog/202205/20220511/20220511-42169.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(152, '345246', '[부산] 정동원콘서트 2nd 음학회', '2023.01.28', '2023.01.29', 'KBS부산홀', '콘서트', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221227/20221227-44378.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(153, '345909', '[부산] 2022 에일리 전국투어 콘서트 ＜한 걸음 더＞', '2022.12.31', '2022.12.31', '부산 벡스코 오디토리움', '콘서트', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220930/20220930-43697.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(160, '241181', '2022 멜로망스 콘서트 ', '2023.03.04', '2023.03.05', '인천삼산월드체육관', '콘서트', '인천', 'http://tkfile.yes24.com/upload2/perfblog/202211/20221116/20221116-44158.jpg/dims/quality/70/',127.115517876658,  127.115517876652);
insert into CULTURAL_LIST values(161, '345249', '[인천] 2022 에일리 전국투어 콘서트 ＜한 걸음 더＞', '2023.01.07', '2023.01.07', '송도컨벤시아', '콘서트', '인천', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220930/20220930-43697.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(162, '335249', '거미 20주년 전국투어 콘서트〈BE ORIGIN〉-인천', '2023.01.07', '2023.01.07', '송도컨벤시아', '콘서트', '인천', 'http://tkfile.yes24.com/upload2/PerfBlog/202210/20221014/20221014-43670.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(163, '385239', '[창원] 노을 20주년 전국투어 콘서트〈스물〉', '2022.12.07', '2023.01.07', 'KBS창원홀', '콘서트', '창원', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220915/20220915-43512.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(164, '365249', '2022 전국투어 콘서트〈박창근〉- 청주', '2023.01.16', '2023.01.16', '청주대학교', '콘서트', '창원', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220920/20220920-43593.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(165, '335241', '원스테이지(One Stage)', '2023.01.17', '2023.01.27', '경기아트센트', '콘서트', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221227/20221227-44563.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(166, '355242', '경기필하모닉 마스터피스 시리즈 Ⅴ', '2023.02.07', '2023.03.07', '경기아트센트', '클래식', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221224/20221224-44531.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(167, '435243', '뮤지컬 〈시블링, 시블링〉', '2022.12.17', '2022.12.17', '성남아트리움', '뮤지컬', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221128/20221128-44285.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(168, '465244', '크리스마스 지브리 탱고', '2022.12.14', '2022.12.14', '', '클래식', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221125/20221125-44278.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(169, '535246', '2022년 임재범 전국투어 콘서트 - 수원', '2023.01.07', '2023.01.07', '수원컨벤션센터', '콘서트', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221101/20221101-43985.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(170, '635248', '[성남] 2022-23 YB TOUR LIGHTS', '2023.01.28', '2023.01.29', '성남아트센터', '콘서트', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202211/20221125/20221125-44265.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(171, '735249', '인천시립합창단 제178회 정기연주회', '2023.01.01', '2023.01.07', '예술의전당', '클래식', '인천', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220922/20220922-43561_1.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(172, '835249', '2022 송골매 전국 투어 콘서트 열망', '2023.01.12', '2023.01.12', '인천 송도컨벤시아', '콘서트', '인천', 'http://tkfile.yes24.com/upload2/PerfBlog/202209/20220915/20220915-43506.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(173, '935249', '블록버스터 영화음악 콘서트＿인천', '2022.10.05', '2022.10.05', '아트센터인천', '클래식', '인천', 'http://tkfile.yes24.com/upload2/PerfBlog/202208/20220824/20220824-43289.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(180, '325239', '원민지 귀국 첼로 독주회', '2023.01.20', '2023.01.20', '예술의전당', '클래식', '인천', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221227/20221227-44562.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(181, '324239', '다닐 트리포노프 피아노 리사이틀', '2023.02.18', '2023.02.18', '예술의전당', '클래식', '인천', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221227/20221227-44557.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(182, '325623', '경기시나위오케스트라 시나위 악보가게 Ⅲ', '2023.08.18', '2023.08.20', '예술의전당', '무용', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221227/20221227-44530.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(183, '321239', '경기도무용단 〈하랑 - 함께 날아오르다〉', '2023.06.18', '2023.06.18', '경기아트센터 ', '무용', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221223/20221223-44529.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(184, '329239', '경기시나위오케스트라 시나위 악보가게 Ⅱ', '2023.06.03', '2023.06.03', '경기아트센터', '무용', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221224/20221224-44528.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(185, '325237', '경기도무용단 〈명작 컬렉션 舞〉', '2023.04.18', '2023.04.18', '경기아트센터', '무용', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202212/20221223/20221223-44527.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(190, '325637', '2022 DRX FAN MEETING', '2023.02.18', '2023.03.28', 'DRX TOWER', '전시', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202112/20211222/20211222-41102.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(191, '315237', '오리엔탈의 빛, 쿠사마 야요이 특별전', '2023.01.18', '2023.04.08', '아트스페이스 선', '전시', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202108/20210810/20210810-39866.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(192, '355233', '모네 향기를 만나다展', '2023.01.03', '2023.02.10', '헤리이스갤러리', '전시', '부산', 'http://tkfile.yes24.com/upload2/PerfBlog/202108/20210820/20210820-38350.jpg',127.1155185576658,  127.115517876352);
insert into CULTURAL_LIST values(193, '325232', '데이비드 호크니 작품으로 배우는 미술상식', '2023.01.01', '2023.01.09', '라움아트센터', '전시', '경기', 'http://tkfile.yes24.com/upload2/PerfBlog/202010/20201030/20201030-37629.jpg',127.1155185576658,  127.115517876352);
-- ------------------------------------------------------------
