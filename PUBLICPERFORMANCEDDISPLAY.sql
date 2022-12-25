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
INSERT INTO REVIEW VALUES(0, 1,  1, 1, '이번 영화 리뷰',  '이번 영화 리뷰 : 개쩝니다.', DEFAULT, '원본파일명1.png', '변경된파일명1.png', 'Y', DEFAULT, DEFAULT);
INSERT INTO REVIEW VALUES(0, 1,  2, 1, '아 진짜...',  '이번 영화 리뷰 : 개쩝니다.', DEFAULT,  '원본파일명2.png', '변경된파일명2.png', 'Y', DEFAULT, DEFAULT);
insert into REVIEW values(0, 2, 3, 2, '안녕하세요', '어그로입니다 ㅎㅎ.', DEFAULT,  '원본파일명3.png', '변경된파일명3.png', DEFAULT, DEFAULT, DEFAULT);
insert into REVIEW values(0, 2, 4, 3, '이거 내용 이해 되시는분??', '나만 이해 안되는거야?? 나만 이해 안되는거야??', DEFAULT,  '원본파일명4.png', '변경된파일명4.png', DEFAULT, DEFAULT, DEFAULT);
insert into REVIEW values(0, 3, 5, 4, '개꿀잼인데요??.', '라고 할뻔..', DEFAULT,  '원본파일명5.png', '변경된파일명5.png', DEFAULT, DEFAULT, DEFAULT);
insert into REVIEW values(0, 3, 6, 5, '재밌었습니다.', '루즈하지 않고 타임킬링은 좋았습니다 ㅎㅎ', DEFAULT,  '원본파일명6.png', '변경된파일명6.png', DEFAULT, DEFAULT, DEFAULT);
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
insert into bookINFO values(0, 6, "에델현악사중주단과 피아니스트 김강아의 클래식음악으로 듣는 러시아의 정취", "2INHEE", "이윤희", 2, 3, 'G10', '2022-10-30', 30000, '신용카드',  DEFAULT);
insert into bookINFO values(0, 16, "[소마미술관] 드로잉나우(Drawing Now) 전시 안내", "2INHEE", "이윤희", 2, 3, 'L1', '2022-10-30', 30000, '신용카드',  DEFAULT);
insert into bookINFO values(0, 18, "겨울왕국: 겨울이야기 [광주]", "2INHEE", "이윤희", 2, 3, 'C4, D4', '2022-12-25', 120000, '신용카드',  DEFAULT);

select * from book_INFO;


